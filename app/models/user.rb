class User < ActiveRecord::Base
  attr_accessible :address, :area, :email, :gender, :name, :other
  has_many :stories
end
