class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :gig_id, null: false
      t.integer :user_id, null: false
      
      t.timestamps
    end
    
    add_index :likes, :gig_id
    add_index :likes, :user_id
    add_index :likes, [:user_id, :gig_id], unique: true
  end
end
