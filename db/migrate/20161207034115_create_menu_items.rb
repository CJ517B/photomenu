class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :item_name
      t.string :price
      t.string :average_review
      t.integer :category_name
      t.integer :menu_id

      t.timestamps

    end
  end
end
