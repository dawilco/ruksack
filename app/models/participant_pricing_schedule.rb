# == Schema Information
#
# Table name: participant_pricing_schedules
#
#  id                  :bigint           not null, primary key
#  end_datetime        :datetime
#  price               :decimal(8, 2)
#  start_datetime      :datetime
#  title               :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  participant_type_id :bigint
#
# Indexes
#
#  index_participant_pricing_schedules_on_participant_type_id  (participant_type_id)
#
# Foreign Keys
#
#  fk_rails_...  (participant_type_id => participant_types.id)
#
class ParticipantPricingSchedule < ApplicationRecord
	belongs_to :participant_type
end
