class ChangeDataTypeForCategoryName < ActiveRecord::Migration[5.0]
  def change
    rename_column :menu_items, :category_name, :category_id

    change_table :menu_items do |m|
      m.change :category_id, :integer
    
    end
  end
end
