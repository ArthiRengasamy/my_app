# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  gender     :string(255)
#  email      :string(255)
#  address    :text
#  area       :string(255)
#  other      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :address, :area, :email, :gender, :name, :other
  has_many :stories

  validates :name, presence: true,     length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
  validates :area, presence: true
  validates :address, presence: true
  before_save { |user| user.email = email.downcase }
end
