class AddLeadIdToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :lead_id, :integer
  end
end
