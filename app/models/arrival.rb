class Arrival < ApplicationRecord
  belongs_to :arrival_airport, class_name: 'Airport'
  belongs_to :arriving_flights, class_name: 'Flight'
end
