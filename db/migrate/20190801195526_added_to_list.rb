class AddedToList < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :saved, :boolean, :default => false
  end
end
