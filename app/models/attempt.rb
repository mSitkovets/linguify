class Attempt < ApplicationRecord
  validates :quiz_id, :user_id, :score, presence: true
  validates :score, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  belongs_to :user, optional: true
  belongs_to :quiz, optional: true
  has_many :answers, dependent: :destroy

  def self.calcScore(user_answers, questions)
    i = 1
    score = 0
    if(user_answers.empty?)
      score = 0
    else
      questions.each do |question|
        # if (question.answer == user_answers[:answers]["Q#{i}".to_sym])
        #  score+=1
        # end
        # binding.pry
        if (question.answer == user_answers.values[0])
          
          score+=1
         end
        i+=1
     end
     score = ((score / Float(i-1)) * 100).to_i
    end  
    score
  end
end
