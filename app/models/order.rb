# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  buyer_id   :integer          not null
#  gig_id     :integer          not null
#  created_at :datetime
#  updated_at :datetime
#  fulfilled  :boolean          default(FALSE), not null
#

class Order < ActiveRecord::Base
  validates :buyer, :gig, presence: true
  
  belongs_to :gig
    
  belongs_to(
    :buyer,
    class_name: "User",
    foreign_key: :buyer_id,
    primary_key: :id
  )
  
  has_many(
    :order_extras, class_name: 'OrderExtra' # finish this
  )
  
  has_many :gig_extras, through: :order_extras, source: :gig_extra
end
