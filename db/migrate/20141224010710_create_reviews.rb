class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :content, null: false
      t.integer :stars, null: false
      t.integer :order_id, null: false

      t.timestamps
    end
    
    add_index :reviews, :order_id, unique: true
    
  end
end
