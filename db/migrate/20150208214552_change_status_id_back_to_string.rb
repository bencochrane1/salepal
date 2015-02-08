class ChangeStatusIdBackToString < ActiveRecord::Migration
  def change
    change_column :leads, :status_id, :string
  end
end
