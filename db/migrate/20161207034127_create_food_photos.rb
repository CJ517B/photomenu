class CreateFoodPhotos < ActiveRecord::Migration
  def change
    create_table :food_photos do |t|
      t.integer :user_id
      t.integer :menu_item_id
      t.integer :item_review
      t.string :comment

      t.timestamps

    end
  end
end
