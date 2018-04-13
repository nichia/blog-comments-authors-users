class User < ApplicationRecord
  # alised association
  has_many :authored_posts,
    :class_name => "Post",
    :foreign_key => :author_id

  has_many :comments
  has_many :commented_post,
    :through => :comments,
    :source => :post
end
