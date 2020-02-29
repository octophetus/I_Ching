class AddHexagramIdToReadings < ActiveRecord::Migration[6.0]
  def change
  	add_column :readings, :hexagram_id, :integer
  end
end
