class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.string :status
      t.integer :confidence
      t.integer :value
      t.string :frequency
      t.text :comments
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
