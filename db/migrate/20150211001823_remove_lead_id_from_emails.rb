class RemoveLeadIdFromEmails < ActiveRecord::Migration
  def change
    remove_column :emails, :lead_id
  end
end
