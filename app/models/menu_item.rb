class MenuItem < ApplicationRecord
  # Direct associations

  belongs_to :menu

  has_many   :want_to_orders,
             :class_name => "Bookmark",
             :dependent => :destroy

  has_many   :photos,
             :class_name => "FoodPhoto",
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :item_name, :uniqueness => { :scope => [:menu_id] }

  validates :item_name, :presence => true

  validates :menu_id, :presence => true

end
