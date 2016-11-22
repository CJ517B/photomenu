class Menu < ApplicationRecord
  # Direct associations

  has_many   :menu_listings,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
