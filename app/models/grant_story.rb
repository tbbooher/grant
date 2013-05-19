class GrantStory
  include Mongoid::Document
  include Mongoid::Timestamps

  field :story, type: String

  validates_length_of :story, minimum: 5, message: "Please submit more than one word for your story."

end
