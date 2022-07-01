class AddPurchaseToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :purchase, :integer
  end
end
