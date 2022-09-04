class ChangeStartFromFlight < ActiveRecord::Migration[7.0]
  def change
    change_column :flights, :start, :date
  end
end
