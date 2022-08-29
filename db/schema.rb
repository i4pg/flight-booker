# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_08_29_083226) do
  create_table "airports", force: :cascade do |t|
    t.string "iata"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "arrivals", force: :cascade do |t|
    t.integer "arrival_airport_id", null: false
    t.integer "arriving_flights_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["arrival_airport_id"], name: "index_arrivals_on_arrival_airport_id"
    t.index ["arriving_flights_id"], name: "index_arrivals_on_arriving_flights_id"
  end

  create_table "departures", force: :cascade do |t|
    t.integer "departure_airport_id", null: false
    t.integer "departing_flights_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departing_flights_id"], name: "index_departures_on_departing_flights_id"
    t.index ["departure_airport_id"], name: "index_departures_on_departure_airport_id"
  end

  create_table "flights", force: :cascade do |t|
    t.datetime "start"
    t.time "duraiton"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "arrivals", "Airport", column: "arrival_airport_id"
  add_foreign_key "arrivals", "flight", column: "arriving_flights_id"
  add_foreign_key "departures", "Airport", column: "departure_airport_id"
  add_foreign_key "departures", "Flight", column: "departing_flights_id"
end
