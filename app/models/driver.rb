class Driver < ApplicationRecord
    has_one_attached :image
    has_many :connections
    has_many :cars, through: :connections

    validates :name, presence: true
    validates :email, presence: true


    def cars_attributes=(cars_attributes)
        console.log "cars_attributes #{driver_params}"
        cars_attributes.values.each do |car|
            if !car[:title].empty?
                self.cars << Car.find(car) 
            end
        end
    end
end
