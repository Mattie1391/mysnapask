class RemovePurchaseFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :purchase
  end
end
