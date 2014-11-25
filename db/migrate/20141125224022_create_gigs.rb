class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :title, null: false
      t.integer :creator_id, null: false
      t.integer :price, null: false
      
      t.timestamps
    end
      
    add_index :gigs, :creator_id
      
  end
end
