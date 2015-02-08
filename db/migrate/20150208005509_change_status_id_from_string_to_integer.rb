class ChangeStatusIdFromStringToInteger < ActiveRecord::Migration
  def change
    change_column :leads, :status_id, 'integer USING CAST("column_to_change" AS integer)'
  end
end

