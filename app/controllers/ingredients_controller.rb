class IngredientsController < ApplicationController

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.new(ingredient_params)
    
    if @ingredient.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.find(params[:id])
    @ingredient.destroy
    redirect_to recipe_path(@recipe)
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :amount, :unit)
  end

end
