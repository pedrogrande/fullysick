# == Schema Information
#
# Table name: patients
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  first_name      :string
#  last_name       :string
#  phone           :string
#  medicare_number :string
#  address         :string
#  suburb          :string
#  state           :string
#  postcode        :string
#  country         :string
#  latitude        :float
#  longitude       :float
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class PatientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
