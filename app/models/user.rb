class User < ApplicationRecord
  has_many :prescriptions
  has_many :medications, through: :prescriptions
  has_many :appointments
  has_many :doctors, through: :appointments

end
