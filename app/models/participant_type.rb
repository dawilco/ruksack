# == Schema Information
#
# Table name: participant_types
#
#  id                            :bigint           not null, primary key
#  max_participants_registration :integer
#  max_participants_session      :integer
#  min_participants_registration :integer
#  name                          :string
#  created_at                    :datetime         not null
#  updated_at                    :datetime         not null
#  event_id                      :bigint
#
# Indexes
#
#  index_participant_types_on_event_id  (event_id)
#
# Foreign Keys
#
#  fk_rails_...  (event_id => events.id)
#
class ParticipantType < ApplicationRecord
	has_many :participant_pricing_schedules

	belongs_to :event
end
