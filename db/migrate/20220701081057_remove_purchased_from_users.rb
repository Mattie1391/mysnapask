class RemovePurchasedFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :purchased
  end
end
