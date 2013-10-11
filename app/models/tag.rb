class Tag < ActiveRecord::Base
  validates :tag_name

  has_many :taggings
  has_many :posts, through: :taggings

end




