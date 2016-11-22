class MenuListing < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :menu_id, :presence => true

  validates :restaurant_id, :presence => true

end
