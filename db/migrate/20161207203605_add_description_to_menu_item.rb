class AddDescriptionToMenuItem < ActiveRecord::Migration[5.0]
  def change
    add_column :menu_items, :description, :string
  end
end
