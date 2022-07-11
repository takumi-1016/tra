class User < ApplicationRecord
    has_secure_password
    has_one_attached :image
    has_many :rooms, class_name: "room", foreign_key: "reference_id", dependent: :destroy
    has_many :reservations, class_name: "reservation", foreign_key: "reference_id", dependent: :destroy

    
end
