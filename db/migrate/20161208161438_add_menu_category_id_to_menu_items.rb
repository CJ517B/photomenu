class AddMenuCategoryIdToMenuItems < ActiveRecord::Migration[5.0]
  def change
    add_column :menu_items, :MenuCategoryId, :integer
  end
end
