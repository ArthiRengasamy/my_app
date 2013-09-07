class Enquiry < ActiveRecord::Base
  attr_accessible :address, :comments, :email, :itemcode, :name, :phone, :pieces
end
