class ChangeLanguageLearningToBeIntegerInQuizzes < ActiveRecord::Migration[5.2]
  def up
    change_column :quizzes, :language_learning, :integer
  end

  def down
    change_column :quizzes, :language_learning, :string
  end
end
