class FixingLines < ActiveRecord::Migration[6.0]
  def change
  	remove_column :lines, :changing_line
  	add_column :lines, :meaning, :text
  end
end
