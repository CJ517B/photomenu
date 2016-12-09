class MenuCategory < ApplicationRecord
  validates :MenuId, :presence => true
  validates :CategoryId, :presence => true
  validates :CategoryId, :uniqueness => { :scope => [:MenuId] }

  belongs_to :menu
  belongs_to :category
end
