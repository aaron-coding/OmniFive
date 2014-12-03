class AddImageUrlToUser < ActiveRecord::Migration
  def change
    add_column :users, :image_url, :string, default: "/assets/default-avatar.jpg", null: false
  end
end
