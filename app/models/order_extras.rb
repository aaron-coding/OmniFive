# == Schema Information
#
# Table name: order_extras
#
#  id           :integer          not null, primary key
#  order_id     :integer          not null
#  gig_extra_id :integer          not null
#  created_at   :datetime
#  updated_at   :datetime
#

class OrderExtras < ActiveRecord::Base
  
end
