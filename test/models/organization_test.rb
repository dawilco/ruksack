# == Schema Information
#
# Table name: organizations
#
#  id                :bigint           not null, primary key
#  name              :string
#  url_key           :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  stripe_account_id :string
#
require "test_helper"

class OrganizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
