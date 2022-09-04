class ChangeStartTypeFromFlight < ActiveRecord::Migration[7.0]
  def change
    rename_column :flights, :start, :date
  end
end
