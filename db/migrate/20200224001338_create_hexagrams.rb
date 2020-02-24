class CreateHexagrams < ActiveRecord::Migration[6.0]
  def change
    create_table :hexagrams do |t|
    	t.integer :number
    	t.string :name
    	t.string :nicknames
    	t.string :above
    	t.string :below
    	t.text :general
    	t.text :judgment
    	t.text :image
    	t.text :commentary
    end
  end
end
