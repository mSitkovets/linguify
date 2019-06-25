class List < ApplicationRecord
  has_many :line_items, dependent: :destroy
  def add_quiz(quiz)
    current_item = line_items.find_by(quiz_id: quiz.id) 
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(quiz_id: quiz.id) 
    end
      current_item
    end
end
