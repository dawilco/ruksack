# == Schema Information
#
# Table name: events
#
#  id             :bigint           not null, primary key
#  end_datetime   :datetime
#  price          :decimal(8, 2)
#  published      :boolean
#  start_datetime :datetime
#  title          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  facility_id    :bigint
#
# Indexes
#
#  index_events_on_facility_id  (facility_id)
#
# Foreign Keys
#
#  fk_rails_...  (facility_id => facilities.id)
#
class Event < ApplicationRecord
	has_many :sessions
	has_one :address, as: :addressable
	
	belongs_to :facility, optional: true
end
