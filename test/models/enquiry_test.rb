# == Schema Information
#
# Table name: enquiries
#
#  id           :integer          not null, primary key
#  email        :string
#  name         :string
#  message      :text
#  phone        :string
#  enquiry_type :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class EnquiryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
