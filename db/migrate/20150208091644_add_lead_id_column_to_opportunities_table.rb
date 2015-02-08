class AddLeadIdColumnToOpportunitiesTable < ActiveRecord::Migration
  def change
    add_column :opportunities, :lead_id, :integer
  end
end
