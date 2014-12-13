class Like < ActiveRecord::Base
  validates :gig, :user, presence: true
  validates :gig_id, :uniqueness => { :scope => :user_id }
  
  belongs_to :gig
  belongs_to :user
  
  
  
end
