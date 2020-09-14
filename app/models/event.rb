class Event < ApplicationRecord
    belongs_to :creator, class_name: "User"

    has_many :guests
    has_many :attendees, through: :guests, source: :user #In event it is referred to as attendees

end
