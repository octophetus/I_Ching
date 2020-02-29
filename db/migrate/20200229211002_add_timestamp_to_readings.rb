class AddTimestampToReadings < ActiveRecord::Migration[6.0]
  def change
    add_column :readings, :timestamp, :timestamp
  end
end
