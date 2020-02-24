class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
    	t.string :tagname
    	t.references :reading
    end
  end
end
