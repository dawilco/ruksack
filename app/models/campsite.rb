# == Schema Information
#
# Table name: campsites
#
#  id          :bigint           not null, primary key
#  capacity    :integer
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  facility_id :bigint
#
# Indexes
#
#  index_campsites_on_facility_id  (facility_id)
#
# Foreign Keys
#
#  fk_rails_...  (facility_id => facilities.id)
#
class Campsite < ApplicationRecord
	belongs_to :facility
end
