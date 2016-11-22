class Menu < ApplicationRecord
  # Direct associations

  has_many   :menu_items,
             :dependent => :destroy

  has_many   :menu_listings,
             :dependent => :destroy

  # Indirect associations

  has_many   :restaurants,
             :through => :menu_listings,
             :source => :restaurant

  # Validations

end
