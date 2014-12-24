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
  
  has_many :order_extras
  
  has_one :review
  
  has_many :gig_extras, through: :order_extras, source: :gig_extra
  
  def total_price
    total_price = gig.price
    
    self.gig_extras.each do |gig_extra|
      total_price += gig_extra.price
    end
    
    total_price
  end
end
