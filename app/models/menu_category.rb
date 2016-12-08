class MenuCategory < ApplicationRecord
  validates :menu_id, :presence => true
  validates :category_id, :presence => true
  validates :category_id, :uniqueness => { :scope => [:menu_id] }
end
