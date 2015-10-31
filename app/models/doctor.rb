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

class Doctor < ActiveRecord::Base
  belongs_to :user

  

  mount_uploader :photo, DoctorPhotoUploader

  extend FriendlyId
  friendly_id :full_name, use: :slugged

  acts_as_taggable

  acts_as_votable

  def full_name
  	[title, first_name, last_name, post_nominals].compact.join(' ')
  end
end
