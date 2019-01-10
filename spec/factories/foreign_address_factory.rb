require 'ffaker'
require "Countries.rb"
require "sevisr/foreign_address.rb"

FactoryBot.define do
  factory :foreignAddress, class: ForeignAddress do

    transient do
      country {Countries::DE}
      address {country.addressf}
    end


    address1 {address.street_address}
    address2 {address.secondary_address}
    city {address.city}
    province {address.state}
    countryCode {country.country_code}
    postalCode {address.zip_code}


  end
end