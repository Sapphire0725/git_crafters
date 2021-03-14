class ChangeDataAddressToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :address, :integer, false, 0
  end
end
