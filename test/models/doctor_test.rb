# == Schema Information
#
# Table name: doctors
#
#  id            :integer          not null, primary key
#  title         :string
#  first_name    :string
#  last_name     :string
#  post_nominals :string
#  bio           :text
#  photo         :string
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  slug          :string
#

require 'test_helper'

class DoctorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
