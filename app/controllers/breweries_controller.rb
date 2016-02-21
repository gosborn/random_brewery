class BreweriesController < ApplicationController

  def index
    @brewery = Brewery.new
    # @latitude = get_location["latitude"]
    # @longitude = get_location["longitude"]
  end

  def create
    if Brewery.has_locals?(brewery_params)
      @brewery = Brewery.random(brewery_params)
      @chosen_beer = @brewery.random_beer
  
      respond_to do |format|
        format.js
      end
    else

      respond_to do |format|
        format.js {render 'no_locals.js.erb'}
      end
    end
  end

  def increase_radius
    binding.pry

  end


  private

  def brewery_params
    params.require(:brewery).permit(:latitude, :longitude, :search_distance)
  end
  
end
