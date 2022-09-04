class Airport < ApplicationRecord
  has_many :departing_flights, foreign_key: :departure_airport_id, class_name: 'Flight', inverse_of: :airports
  has_many :arriving_flights, foreign_key: :arrival_airport_id, class_name: 'Flight', inverse_of: :airports
  accepts_nested_attributes_for :departing_flights
  accepts_nested_attributes_for :arriving_flights
end
