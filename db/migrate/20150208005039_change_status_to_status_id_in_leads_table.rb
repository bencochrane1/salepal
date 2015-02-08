class ChangeStatusToStatusIdInLeadsTable < ActiveRecord::Migration
  def change
    rename_column :leads, :status, :status_id
  end
end
