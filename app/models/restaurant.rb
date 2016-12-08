class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :menus,
             :class_name => "Menu",
             :dependent => :destroy

  mount_uploader :cover_photo, CoverPhotoUploader

  # Indirect associations

  # Validations

  validates :address, :presence => true

  validates :name, :uniqueness => { :scope => [:address] }

  validates :name, :presence => true

end
