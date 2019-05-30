class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.integer :difficulty_level

      t.timestamps
    end
  end
end
