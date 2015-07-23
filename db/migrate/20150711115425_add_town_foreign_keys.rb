class AddTownForeignKeys < ActiveRecord::Migration
  def change
  	add_column :hotels, :town_id, :integer
  end
end
