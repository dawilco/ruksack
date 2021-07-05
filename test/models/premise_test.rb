# == Schema Information
#
# Table name: premises
#
#  id          :bigint           not null, primary key
#  name        :string
#  type        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  facility_id :bigint
#
# Indexes
#
#  index_premises_on_facility_id  (facility_id)
#
# Foreign Keys
#
#  fk_rails_...  (facility_id => facilities.id)
#
require "test_helper"

class PremiseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
