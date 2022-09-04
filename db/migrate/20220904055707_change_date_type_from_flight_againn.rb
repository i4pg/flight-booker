class ChangeDateTypeFromFlightAgainn < ActiveRecord::Migration[7.0]
  def change
    change_column :flights, :date, :date
  end
end
