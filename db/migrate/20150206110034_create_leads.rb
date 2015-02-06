class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :title
      t.string :status
      t.integer :task_id
      t.integer :note_id
      t.integer :contact_id
      t.integer :opportunity_id

      t.timestamps null: false
    end
  end
end
