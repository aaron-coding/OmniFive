class CreateOrderExtras < ActiveRecord::Migration
  def change
    create_table :order_extras do |t|
      t.integer :order_id, null: false
      t.integer :gig_extra_id, null: false

      t.timestamps
    end
    
    add_index :order_extras, :order_id
    add_index :order_extras, :gig_extra_id
  end
end
