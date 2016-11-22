class MenuListing < ApplicationRecord
  # Direct associations

  belongs_to :menu

  belongs_to :restaurant

  # Indirect associations

  # Validations

  validates :menu_id, :presence => true

  validates :restaurant_id, :presence => true

end
