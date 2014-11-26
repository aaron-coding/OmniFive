class CreateGigExtras < ActiveRecord::Migration
  def change
    create_table :gig_extras do |t|
      t.integer :gig_id, null: false
      t.string :title, null: false
      t.integer :price, null: false
      
      t.timestamps
    end
    
    add_index :gig_extras, :gig_id
    
  end
end
