# == Schema Information
#
# Table name: events
#
#  id              :bigint           not null, primary key
#  description     :text
#  end_datetime    :datetime
#  payment_types   :string           default([]), is an Array
#  published       :boolean
#  start_datetime  :datetime
#  title           :string
#  url             :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  facility_id     :bigint
#  organization_id :bigint
#
# Indexes
#
#  index_events_on_facility_id      (facility_id)
#  index_events_on_organization_id  (organization_id)
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
