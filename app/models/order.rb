# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  buyer_id   :integer          not null
#  gig_id     :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class Order < ActiveRecord::Base
end
