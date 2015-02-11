class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :subject
      t.string :to
      t.string :from
      t.string :date_sent
      t.string :message_body

      t.timestamps null: false
    end
  end
end
