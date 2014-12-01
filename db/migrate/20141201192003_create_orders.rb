class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :buyer_id, null: false
      t.integer :gig_id, null: false
      
      t.timestamps
    end
    
    add_index :orders, :gig_id
    add_index :orders, :buyer_id
  end
end
