class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :question
      t.string :option_a
      t.string :option_b
      t.string :option_c
      t.string :answer

      t.timestamps
    end
  end
end
