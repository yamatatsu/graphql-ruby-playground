# == Schema Information
#
# Table name: shop_sites
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  shop_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_shop_sites_on_shop_id  (shop_id)
#

class ShopSite < ApplicationRecord
  belongs_to :shop
end
