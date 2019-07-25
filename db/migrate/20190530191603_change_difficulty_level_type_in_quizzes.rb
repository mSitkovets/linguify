class ChangeDifficultyLevelTypeInQuizzes < ActiveRecord::Migration[5.2]
  def up
    change_column :quizzes, :difficulty_level, :string
  end
  def down
    change_column :quizzes, :difficulty_level, :integer
  end
end
