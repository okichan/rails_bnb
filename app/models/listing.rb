class Listing < ApplicationRecord
  geocoded_by :full_address
  after_validation :geocode

  def country
    ISO3166::Country.new('AU')
  end

  def full_address
    "#{street_address}, #{city}, #{country.name}"
  end
end
