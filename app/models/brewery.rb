class Brewery < ActiveRestClient::Base
  include ActiveModel::Model

  base_url "http://api.brewerydb.com/v2/"

  # get :all, '/search/geo/point?lat=:latitude&lng=:longitude&key=' + ENV["api_key"]

  get :all, '/search/geo/point?lat=:latitude&lng=:longitude&radius=:search_distance&key=' + ENV["api_key"]

  attr_accessor :search_distance


  def self.random(location_hash)
    local_breweries = all(location_hash).data
    sample(local_breweries)
  end

  def name
    self.brewery["name"]
  end

  def beers
    Beer.all(brewery_id: self.brewery.id).data
  end

  def random_beer
    Beer.sample(beers)
  end

  def self.sample(breweries)
    breweries[rand(breweries.count)]
  end

  def self.has_locals?(location_hash)
    all(location_hash).data.nil? ? false : true
  end

  def self.random_extra(location_hash)
    local_breweries = all_extra(location_hash).data
    sample(local_breweries)
  end


end