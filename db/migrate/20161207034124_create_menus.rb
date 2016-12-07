class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.integer :restaurant_id
      t.integer :menu_name

      t.timestamps

    end
  end
end
