class AddImageToGig < ActiveRecord::Migration
  def change
    add_column :gigs, :image_url, :string
  end
end
