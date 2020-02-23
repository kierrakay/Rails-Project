class User < ApplicationRecord
    has_many :reservations
    has_many :hostels, through: :reservations
    has_secure_password

end