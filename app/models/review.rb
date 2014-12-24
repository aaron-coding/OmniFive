# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  content    :string(255)      not null
#  stars      :integer          not null
#  order_id   :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class Review < ActiveRecord::Base
  # validates
  validates :content, :order, presence: true
  validates :stars, inclusion: { in: 1..5 }
  validates :order_id, :uniqueness => true
  belongs_to :order
  
  delegate :buyer, to: :order#, allow_nil: true
  delegate :gig, to: :order

end
