# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  gig_id     :integer          not null
#  user_id    :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class Like < ActiveRecord::Base
  validates :gig, :user, presence: true
  validates :gig_id, :uniqueness => { :scope => :user_id }
  
  belongs_to :gig
  belongs_to :user
  
  # scope :own_likes, -> { where(user: current_user) }
  
end
