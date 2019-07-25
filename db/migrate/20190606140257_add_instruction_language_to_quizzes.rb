class AddInstructionLanguageToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :instruction_language, :string
  end
end
