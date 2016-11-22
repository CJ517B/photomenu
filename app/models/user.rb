class User < ApplicationRecord
  # Direct associations

  has_many   :photos,
             :class_name => "FoodPhoto",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
