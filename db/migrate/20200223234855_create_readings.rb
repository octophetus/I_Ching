class CreateReadings < ActiveRecord::Migration[6.0]
  def change
    create_table :readings do |t|
    	t.string :question
    	t.text :notes
    	t.integer :first_place
    	t.integer :second_place
		t.integer :third_place
		t.integer :fourth_place
		t.integer :fifth_place
		t.integer :sixth_place
		t.references :user
    end
  end
end
