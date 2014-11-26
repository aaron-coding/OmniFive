# == Schema Information
#
# Table name: gig_extras
#
#  id         :integer          not null, primary key
#  gig_id     :integer          not null
#  title      :string(255)      not null
#  price      :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class GigExtra < ActiveRecord::Base
  validates :title, :price, :gig, presence: true
  
  belongs_to :gig
  
  
end
