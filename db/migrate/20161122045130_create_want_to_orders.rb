class CreateWantToOrders < ActiveRecord::Migration
  def change
    create_table :want_to_orders do |t|
      t.integer :user_id
      t.integer :menu_item_id

      t.timestamps

    end
  end
end
