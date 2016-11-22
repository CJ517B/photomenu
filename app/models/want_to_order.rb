class WantToOrder < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :menu_item_id, :presence => true

  validates :user_id, :presence => true

end
