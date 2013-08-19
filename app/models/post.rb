class Post
  include MongoMapper::Document

  key :title, String
  key :text, String

  many :comments

  validates :title, presence: true,
                    length: { minimum: 5 }
  end


