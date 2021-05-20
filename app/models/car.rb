class Car < ApplicationRecord
    has_one_attached :image
    has_many :connections
    has_many :drivers, through: :connections

    validates :title, presence: true
    validates :color, presence: true
end
