class MenuItem < ApplicationRecord
  # Direct associations

  has_many   :photos,
             :class_name => "FoodPhoto",
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :item_name, :presence => true

end
