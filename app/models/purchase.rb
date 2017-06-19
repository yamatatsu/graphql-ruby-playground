# == Schema Information
#
# Table name: purchases
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  item_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_purchases_on_item_id  (item_id)
#  index_purchases_on_user_id  (user_id)
#

class Purchase < ApplicationRecord
  belongs_to :item
end
