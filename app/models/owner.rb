class Owner < ActiveRecord::Base
  #for passwords
  has_secure_password
  
  # TODO: add association ot pets
  has_many :pets

  # TODO: add association to appointments (through pets)

  # TODO: add validations

  before_save :normalize_phone_number

  # removes leading 1 and the characters (, ), -, .
  def normalize_phone_number
    # stretch
  end


end
