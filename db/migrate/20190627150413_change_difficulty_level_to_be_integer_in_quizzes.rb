class ChangeDifficultyLevelToBeIntegerInQuizzes < ActiveRecord::Migration[5.2]
  def up
    change_column :quizzes, :difficulty_level, :integer
  end

  def down
    change_column :quizzes, :difficulty_level, :string
  end
end
