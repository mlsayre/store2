class Product < ActiveRecord::Base
  attr_accessible :name, :price, :released_on, :avatar
  def to_param
    "#{id}-#{name.parameterize}"
  end

  has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
end
