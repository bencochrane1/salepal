class AddLeadIdToEmailsTable < ActiveRecord::Migration
  def change
    add_column :emails, :lead_id, :integer
  end
end
