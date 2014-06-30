# == Schema Information
#
# Table name: moods
#
#  id         :integer          not null, primary key
#  happy      :string(255)
#  sad        :string(255)
#  rage       :string(255)
#  anger      :string(255)
#  hysteria   :string(255)
#  boredom    :string(255)
#  pensive    :string(255)
#  melanholy  :string(255)
#  elated     :string(255)
#  tired      :string(255)
#  frustrated :string(255)
#  party      :string(255)
#  hateful    :string(255)
#  drunk      :string(255)
#  high       :string(255)
#  relaxed    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class MoodsTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
