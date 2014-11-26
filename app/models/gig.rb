# == Schema Information
#
# Table name: gigs
#
#  id          :integer          not null, primary key
#  title       :string(255)      not null
#  creator_id  :integer          not null
#  price       :integer          not null
#  created_at  :datetime
#  updated_at  :datetime
#  image_url   :string(255)
#  description :string(255)      not null
#

class Gig < ActiveRecord::Base
  validates :title, :creator, :price, presence: true
  
  belongs_to(
    :creator,
    class_name: "User",
    foreign_key: :creator_id,
    primary_key: :id
  )
  
  has_many(
    :extras,
    class_name: "GigExtra",
    foreign_key: :gig_id,
    primary_key: :id
  )
  
end
