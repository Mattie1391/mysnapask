class AddPurchasedToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :purchased, :integer, array: true
  end
end
