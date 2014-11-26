class AddCreatorDescToUsers < ActiveRecord::Migration
  def change
    add_column :users, :creator_desc, :string
    
    User.all.each do |user|
      user.creator_desc = user.username
      user.save!
    end
    
    change_column :users, :creator_desc, :string, null: false
  end
end
