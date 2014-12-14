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
#  description :text             not null
#

class Gig < ActiveRecord::Base
  validates :title, :creator, :price, :description, :image_url, presence: true
  
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

  has_many :likes
  
  def liked_by?(user)
    return false if user.nil?
    likes.any? { |like| like.user_id == user.id }
  end
   
  # user_id = current_user.id
  
  # has_many(:current_user_likes, -> { where(["user_id = ?", 1])},
#     class_name: "Like",
#     foreign_key: :gig_id,
#     primary_key: :id
#   )
#
  
end
