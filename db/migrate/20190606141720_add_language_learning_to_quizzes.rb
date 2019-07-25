class AddLanguageLearningToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :language_learning, :string
  end
end
