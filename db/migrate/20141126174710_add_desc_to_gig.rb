class AddDescToGig < ActiveRecord::Migration
  def change
    add_column :gigs, :description, :string
    
    Gig.all.each do |gig|
      gig.description = gig.title
      gig.save!
    end
    
    change_column :gigs, :description, :string, null: false
  end
end
