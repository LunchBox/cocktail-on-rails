class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].blank?
      @recipes = current_user.recipes.ordered
    else
      @keyword = params[:query].strip
      @recipes = current_user.recipes.search_by(params[:query])
    end
  end

  def show
  end

  def new 
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new recipe_params
    @recipe.user = current_user

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: "Recipe was successfully created." }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: "Recipe was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @recipe.destroy

    respond_to do |format|
      format.html { redirect_to recipes_path, notice: "Recipe was successfully destroyed."}
    end
  end

  private

  def set_recipe
    @recipe = Recipe.find params[:id]
  end

  def recipe_params
    params.require(:recipe).permit(:name, :desc, :cover_image)
  end
end
