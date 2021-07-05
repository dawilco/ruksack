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
require "test_helper"

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
