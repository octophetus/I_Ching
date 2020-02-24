class CreateLines < ActiveRecord::Migration[6.0]
  def change
    create_table :lines do |t|
   	  t.integer :places
   	  t.integer :changing_line
      t.references :hexagram
    end
  end
end
