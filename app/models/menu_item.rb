class MenuItem < ApplicationRecord
  # Direct associations

  belongs_to :menu

  has_many   :bookmarks,
             :class_name => "Bookmark",
             :dependent => :destroy

  has_many   :photos,
             :class_name => "FoodPhoto",
             :dependent => :destroy

  belongs_to :menu_categories

  # Indirect associations

  belongs_to :menus

  # Validations

  validates :item_name, :uniqueness => { :scope => [:menu_id, :description, :menu_category_id] }

  validates :item_name, :presence => true

  validates :menu_id, :presence => true

end
