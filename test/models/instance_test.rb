# == Schema Information
#
# Table name: instances
#
#  id         :integer          not null, primary key
#  hostname   :string           not null
#  profile_id :integer          not null
#  region     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class InstanceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
