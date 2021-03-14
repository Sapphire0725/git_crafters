class ChangeDataAddressToUser < ActiveRecord::Migration[5.2]
  def change
    change_column_null :users, :address, false, 0
    change_column :users, :address, :integer, default: 0
  end
end
