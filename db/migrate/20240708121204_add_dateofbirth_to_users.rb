class AddDateofbirthToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :dateofbirth, :date
  end
end
