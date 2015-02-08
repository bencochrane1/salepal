class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.datetime :due_date
      t.integer :user_id
      t.integer :lead_id
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
