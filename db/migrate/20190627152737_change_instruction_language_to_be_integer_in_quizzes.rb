class ChangeInstructionLanguageToBeIntegerInQuizzes < ActiveRecord::Migration[5.2]
  def up
    change_column :quizzes, :instruction_language, :integer
  end

  def down
    change_column :quizzes, :instruction_language, :string
  end
end
