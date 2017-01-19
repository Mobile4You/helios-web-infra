# == Schema Information
#
# Table name: profiles
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  key        :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Profile < ApplicationRecord
  has_many :instances
end
