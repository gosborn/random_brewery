class BreweriesController < ApplicationController
  def index
    @brewery = Brewery.new
  end

  def create
    if Brewery.locals?(brewery_params)
      select_random_beer
      respond_to do |format|
        format.js
      end
    else
      respond_to do |format|
        format.js { render 'no_locals.js.erb' }
      end
    end
  end

  def increase_radius
    # to be implemented
  end

  private

  def brewery_params
    params.require(:brewery).permit(:latitude, :longitude, :search_distance)
  end

  def select_random_beer
    @brewery = Brewery.random(brewery_params)
    @chosen_beer = @brewery.random_beer
  end
end
