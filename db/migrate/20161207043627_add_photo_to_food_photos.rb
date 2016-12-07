class AddPhotoToFoodPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :food_photos, :photo, :string
  end
end
