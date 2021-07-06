# == Schema Information
#
# Table name: sessions
#
#  id                          :bigint           not null, primary key
#  end_datetime                :datetime
#  name                        :string
#  registration_close_datetime :datetime
#  registration_open_datetime  :datetime
#  start_datetime              :datetime
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  event_id                    :bigint
#
# Indexes
#
#  index_sessions_on_event_id  (event_id)
#
# Foreign Keys
#
#  fk_rails_...  (event_id => events.id)
#
class Session < ApplicationRecord
	belongs_to :event

	has_many :registrations
	has_many :participants, through: :registrations
end
