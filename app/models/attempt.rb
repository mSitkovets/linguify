class Attempt < ApplicationRecord
  validates :quiz_id, :user_id, :score, presence: true
  validates :score, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  belongs_to :user, optional: true
  belongs_to :quiz, optional: true
  has_many :answers, dependent: :destroy

  def self.calcScore(user_answers, questions)
    score = 0
    count = 0
    if(user_answers.empty?)
      score = 0
    else
      questions.each do |question|
        # if (question.answer == user_answers[:answers]["Q#{i}".to_sym])
        #  score+=1
        # end
        # binding.pry
        # count = 0
        # while(count < user_answers.length)
          if (question.id == user_answers[count].question_id && question.answer == user_answers[count].user_answer)
            score+=1
          end
          count+=1
        # end
     end
     score = ((score / Float(questions.length)) * 100).to_i
    end  
    score
  end
end
