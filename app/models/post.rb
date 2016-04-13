class Post < ActiveRecord::Base
  # when post destroy the comments will also be destroyed
  has_many :comments, dependent: :destroy
  # title exist minimum 5 char
  validates :title, presence: true, length: {minimum: 5}
  validates :body, presence: true

end
