class AddLeadIdandUserIdToEmailsTable < ActiveRecord::Migration
  def change
    add_column :emails, :lead_id, :integer
    add_column :emails, :user_id, :integer
  end
end
