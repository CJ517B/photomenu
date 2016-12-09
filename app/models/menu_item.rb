class MenuItem < ApplicationRecord
  # Direct associations

  belongs_to :menu

  has_many   :bookmarks,
  :class_name => "Bookmark",
  :dependent => :destroy

  has_many   :photos,
  :class_name => "FoodPhoto",
  :dependent => :destroy

  has_many :fans, :through => :bookmarks, :source => :user

  belongs_to :MenuCategory
  belongs_to :category

  # Indirect associations

  # Validations

  validates :item_name, :uniqueness => { :scope => [:menu_id, :description, :MenuCategoryId] }

  validates :item_name, :presence => true

  validates :menu_id, :presence => true

end
