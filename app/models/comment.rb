class Comment
  include Mongoid::Document
  include Mongoid::Timestamps

  field :text, type: String
  field :name, type: String
end
