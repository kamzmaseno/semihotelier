class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
    	t.string :type
    	t.decimal :price
      t.timestamps null: false
    end
  end
end