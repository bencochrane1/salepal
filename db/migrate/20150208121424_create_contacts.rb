class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :title
      t.integer :mobile_number
      t.integer :office_number
      t.string :email
      t.string :url

      t.timestamps null: false
    end
  end
end
