class ChangeStatusIdToStatus < ActiveRecord::Migration
  def change
    rename_column :leads, :status_id, :status
  end
end
