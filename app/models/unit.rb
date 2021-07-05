# == Schema Information
#
# Table name: units
#
#  id         :bigint           not null, primary key
#  number     :integer
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Unit < ApplicationRecord
end
