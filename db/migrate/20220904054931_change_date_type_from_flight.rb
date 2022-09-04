class ChangeDateTypeFromFlight < ActiveRecord::Migration[7.0]
  def change
    change_column :flights, :date, :integer
  end
end
