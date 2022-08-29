class Airport < ApplicationRecord
  has_many :departures, foreign_key: :departure_airport_id
  has_many :deprating_flights, through: :departures
  has_many :arrivals, foreign_key: :arrival_airport_id
  has_many :arriving_flights, through: :arrivals
end
