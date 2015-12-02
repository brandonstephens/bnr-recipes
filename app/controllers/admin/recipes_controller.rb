class Admin::RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def destroy
    @recipes = Recipe.find(params[:id])

    @recipes.destroy
    
    redirect_to admin_recipes_path
  end

end
