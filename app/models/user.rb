class User < ApplicationRecord
  # Direct associations

  has_many   :want_to_orders,
             :class_name => "Bookmark",
             :dependent => :destroy

  has_many   :photos,
             :class_name => "FoodPhoto",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
