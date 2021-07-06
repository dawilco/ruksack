# == Schema Information
#
# Table name: registrations
#
#  id             :bigint           not null, primary key
#  amount_paid    :decimal(8, 2)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  participant_id :bigint
#  session_id     :bigint
#
# Indexes
#
#  index_registrations_on_participant_id  (participant_id)
#  index_registrations_on_session_id      (session_id)
#
class Registration < ApplicationRecord
	belongs_to :participant
	belongs_to :session
end
