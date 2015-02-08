class ChangeStatusIdFromStringToInteger < ActiveRecord::Migration
  def change
    change_column :leads, :status_id, :integer
  end
end

