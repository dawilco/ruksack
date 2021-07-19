# == Schema Information
#
# Table name: organizations
#
#  id                :bigint           not null, primary key
#  name              :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  stripe_account_id :string
#
class Organization < ApplicationRecord
end
