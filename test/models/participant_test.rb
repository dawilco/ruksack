# == Schema Information
#
# Table name: participants
#
#  id            :bigint           not null, primary key
#  date_of_birth :date
#  first_name    :string
#  last_name     :string
#  type          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  unit_id       :bigint
#
# Indexes
#
#  index_participants_on_unit_id  (unit_id)
#
# Foreign Keys
#
#  fk_rails_...  (unit_id => units.id)
#
require "test_helper"

class ParticipantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
