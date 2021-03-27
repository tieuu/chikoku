class AddStaffToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :staff, :boolean
  end
end
