# == Schema Information
#
# Table name: facilities
#
#  id         :bigint           not null, primary key
#  name       :string
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Facility < ApplicationRecord
	has_many :events
	has_many :premises
	has_many :campsites
end
