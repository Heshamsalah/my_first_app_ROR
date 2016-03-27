class RecipesController < ApplicationController
  def index
  	@search_term = params[:looking_for] || 'meat'
  	@recipes = Recipefinder.for(@search_term)
  end
end
