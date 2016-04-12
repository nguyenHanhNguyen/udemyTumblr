class Comment < ActiveRecord::Base
  # relationship with post
  # rails generate model Comment name:string body:text post:references
  belongs_to :post
end
