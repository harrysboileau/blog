class Post < ActiveRecord::Base
  # Remember to create a migration!
  validates :title, presence: true
  validates :body, presence: true

  has_many :taggings
  has_many :tags, through: :taggings


end
