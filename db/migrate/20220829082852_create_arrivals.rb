class CreateArrivals < ActiveRecord::Migration[7.0]
  def change
    create_table :arrivals do |t|
      t.references :arrival_airport, null: false, foreign_key: { to_table: 'Airport' }
      t.references :arriving_flights, null: false, foreign_key: { to_table: 'flight' }

      t.timestamps
    end
  end
end
