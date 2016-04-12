class Post < ActiveRecord::Base
  has_many :comments
  # title exist minimum 5 char
  validates :title, presence: true, length: {minimum: 5}
  validates :body, presence: true

end
