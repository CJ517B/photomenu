class FoodPhoto < ApplicationRecord
  # Direct associations

  belongs_to :menu_item

  belongs_to :user

  # Indirect associations

  # Validations

  validates :menu_item_id, :presence => true

end
