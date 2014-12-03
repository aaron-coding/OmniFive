class ChangeGigDescriptionToTextType < ActiveRecord::Migration
  def change
    change_column :gigs, :description, :text, null: false
  end
end
