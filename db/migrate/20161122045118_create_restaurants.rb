class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :neighborhood
      t.string :state
      t.string :country
      t.string :zipcode
      t.string :cover_photo
      t.text :description

      t.timestamps

    end
  end
end
