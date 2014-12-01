class AddFulfilledToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :fulfilled, :boolean, default: false, null: false
  end
end
