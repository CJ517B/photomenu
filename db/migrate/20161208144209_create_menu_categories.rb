class CreateMenuCategories < ActiveRecord::Migration
  def change
    create_table :menu_categories do |t|
      t.integer :MenuId
      t.integer :CategoryId

      t.timestamps

    end
  end
end
