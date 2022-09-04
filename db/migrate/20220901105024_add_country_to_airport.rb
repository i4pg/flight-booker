class AddCountryToAirport < ActiveRecord::Migration[7.0]
  def change
    add_column :airports, :country, :string
  end
end
