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

class Patient < ActiveRecord::Base
  belongs_to :user

  validates :first_name, :last_name, :address, :phone, :suburb, :postcode, :state, presence: true

  geocoded_by :full_street_address
  after_validation :geocode

  def full_name
  	[first_name, last_name].compact.join(' ')
  end

  def full_street_address
  	[address, suburb, state, postcode, country].compact.join(', ')
  end
end
