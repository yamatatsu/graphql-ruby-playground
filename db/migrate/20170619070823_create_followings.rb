class CreateFollowings < ActiveRecord::Migration[5.1]
  def change
    create_table :followings do |t|
      t.references :user
      t.string :follower_id

      t.timestamps
    end
  end
end
