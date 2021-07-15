# == Schema Information
#
# Table name: events
#
#  id             :bigint           not null, primary key
#  description    :text
#  end_datetime   :datetime
#  published      :boolean
#  start_datetime :datetime
#  title          :string
#  url            :string
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

	belongs_to :facility, optional: true
end
