class CreateMenuListings < ActiveRecord::Migration
  def change
    create_table :menu_listings do |t|
      t.integer :restaurant_id
      t.integer :menu_id

      t.timestamps

    end
  end
end
