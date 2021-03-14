class AddRadionameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :radioname, :string
  end
end
