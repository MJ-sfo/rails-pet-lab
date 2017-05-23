class Owner < ActiveRecord::Base
  # TODO: add association ot pets
  has_many :pets

  # TODO: add association to appointments (through pets)

  # TODO: add validations

  class Person < ApplicationRecord
    validates :first_name, presence: true, length: { minimum: 255 }
    validates :last_name, presence: true, length: { minimum: 255 }
    validates :email, presence: true, length: { minimum: 255 }, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/,
    message: "email must include '@' sign" }
  end

  before_save :normalize_phone_number

  # removes leading 1 and the characters (, ), -, .
  def normalize_phone_number
    # stretch
  end

end
