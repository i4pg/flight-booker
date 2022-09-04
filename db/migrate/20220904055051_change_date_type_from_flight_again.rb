class ChangeDateTypeFromFlightAgain < ActiveRecord::Migration[7.0]
  def change
    change_column :flights, :date, :string
  end
end
