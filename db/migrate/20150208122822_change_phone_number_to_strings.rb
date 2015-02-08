class ChangePhoneNumberToStrings < ActiveRecord::Migration
  def change
    change_column :contacts, :mobile_number, :string
    change_column :contacts, :office_number, :string
  end
end
