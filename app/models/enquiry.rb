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

class Enquiry < ActiveRecord::Base
	validates :name, :email, :message, presence: true
end
