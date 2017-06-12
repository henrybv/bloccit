class Comment < ActiveRecord::Base
  belongs_to :post # a comment belongs to a post
  # aka, a post has many comments.
end
