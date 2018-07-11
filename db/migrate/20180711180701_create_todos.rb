class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :task
      t.integer :time
      t.integer :days
      t.string :description
      t.boolean :complete

      t.timestamps null: false
    end
  end
end
