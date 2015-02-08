class RemoveOpportunityIdColumnFromLeadsTable < ActiveRecord::Migration
  def change
    remove_column :leads, :opportunity_id
  end
end
