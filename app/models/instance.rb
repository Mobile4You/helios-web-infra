# == Schema Information
#
# Table name: instances
#
#  id         :integer          not null, primary key
#  hostname   :string           not null
#  profile_i :integer          not null
#  region     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Instance < ApplicationRecord
  belongs_to :profile
end
