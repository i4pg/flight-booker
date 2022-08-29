class Flight < ApplicationRecord
  has_one :arrival, foreign_key: :arriving_flight_id
  has_one :arrival_airport, through: :arrival
  has_one :departure, foreign_key: :departing_flight_id
  has_one :departure_airport, through: :departure
end
