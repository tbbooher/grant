class Registration
  include Mongoid::Document
  include Mongoid::Timestamps

  field :email, type: String
  field :connection, type: Symbol

  validates :email,   
            :presence => true,   
            :uniqueness => true,   
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }    
            
end
