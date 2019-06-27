class Quiz < ApplicationRecord
  validates :title, :description, :user_id, :difficulty_level, :language_learning, :instruction_language, presence: true
  has_many :attempts, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item 

  enum difficulty_level: {
    "Beginner" => 0, 
    "Intermediate" => 1, 
    "Advanced" => 2
  }

  enum language_learning: {
    "English" => 0, 
    "French" => 1, 
    "Korean" => 2,
    "Russian" => 3
  }, _suffix: true

  enum instruction_language: {
    "English" => 0, 
    "French" => 1, 
    "Korean" => 2,
    "Russian" => 3
  },_prefix: :language_learning
  #hook method
  private
    # ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_line_item 
      unless line_items.empty?
        errors.add(:base, 'Line Items present')
        throw :abort 
      end
    end
end
