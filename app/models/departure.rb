class Departure < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :departing_flights, class_name: 'Flight'
end
