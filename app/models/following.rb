# == Schema Information
#
# Table name: followings
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  follower_id :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_followings_on_user_id  (user_id)
#

class Following < ApplicationRecord
end
