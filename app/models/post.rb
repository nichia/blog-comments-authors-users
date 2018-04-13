class Post < ApplicationRecord
  #alias the user association as "author"
  belongs_to :author, :class_name => "User"

  has_many :comments
  has_many :commentors,
    :through => :comments,
    :source => :commentor
end
