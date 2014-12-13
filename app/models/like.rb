class Like < ActiveRecord::Base
  validates :gig, :user, presence: true

  belongs_to :gig
  belongs_to :user
  
  
end
