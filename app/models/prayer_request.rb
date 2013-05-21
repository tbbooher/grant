class PrayerRequest
  include Mongoid::Document
  field :request, type: String

  sanitizes :field

end
