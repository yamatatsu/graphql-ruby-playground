# == Schema Information
#
# Table name: shops
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_shops_on_user_id  (user_id)
#

class Shop < ApplicationRecord
  belongs_to :user
  has_one :shop_site
  has_many :items
end
