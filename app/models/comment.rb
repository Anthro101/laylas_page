class Comment
  include MongoMapper::EmbeddedDocument

  key :text, String
  key :body, String

  one :post
end 