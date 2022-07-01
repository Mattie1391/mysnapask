class ChangePurchaseToArray < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :purchase, :integer, array: true, default: []
  end
end
