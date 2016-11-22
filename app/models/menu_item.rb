class MenuItem < ApplicationRecord
  # Direct associations

  has_many   :want_to_orders,
             :dependent => :destroy

  has_many   :photos,
             :class_name => "FoodPhoto",
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :item_name, :presence => true

end
