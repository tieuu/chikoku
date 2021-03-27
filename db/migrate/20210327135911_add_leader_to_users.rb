class AddLeaderToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :leader, :boolean
  end
end
