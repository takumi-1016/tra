class Room < ApplicationRecord
    has_one_attached :image
    has_many :reservations, class_name: "reservation", foreign_key: "reference_id", dependent: :destroy
    belongs_to :user, class_name: "user", foreign_key: "user_id"
end
