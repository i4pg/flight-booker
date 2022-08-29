class CreateDepartures < ActiveRecord::Migration[7.0]
  def change
    create_table :departures do |t|
      t.references :departure_airport, null: false, foreign_key: { to_table: 'Airport' }
      t.references :departing_flights, null: false, foreign_key: { to_table: 'Flight' }

      t.timestamps
    end
  end
end
