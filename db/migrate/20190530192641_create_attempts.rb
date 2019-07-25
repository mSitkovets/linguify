class CreateAttempts < ActiveRecord::Migration[5.2]
  def change
    create_table :attempts do |t|
      t.integer :quiz_id
      t.integer :user_id
      t.integer :score

      t.timestamps
    end
  end
end
