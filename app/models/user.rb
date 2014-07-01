# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  password_digest :string(255)
#  user_id         :integer
#  first_name      :string(255)
#  last_name       :string(255)
#  email           :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  has_secure_password
  has_many :moods
  has_many :playlists, :through => :moods
end
