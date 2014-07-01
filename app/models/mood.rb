# == Schema Information
#
# Table name: moods
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Mood < ActiveRecord::Base
  belongs_to :users
  has_many :playlists
end
