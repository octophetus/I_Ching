class AddLinesToHexagrams < ActiveRecord::Migration[6.0]
  def change
  	add_column :hexagrams, :line1, :integer
  	add_column :hexagrams, :line2, :integer
  	add_column :hexagrams, :line3, :integer
  	add_column :hexagrams, :line4, :integer
  	add_column :hexagrams, :line5, :integer
  	add_column :hexagrams, :line6, :integer
  end
end
