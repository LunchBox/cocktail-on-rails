class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :edit_labels, :update, :destroy, :add_label, :remove_label]

  def index
    if !params[:query].blank?
      @keyword = params[:query].strip
      @recipes = current_user.recipes.search_by(params[:query])
		elsif !params[:label].blank?
      @recipes = current_user.recipes.tagged_with params[:label], on: :labels
    else
      @recipes = current_user.recipes.ordered
    end
  end

  def labels
    if params[:q].blank?
      @labels = []
    else
      @keyword = params[:q].strip
      @labels = current_user.recipes.top_labels.where ["lower(name) like (?)", "%#{params[:q]}%"]
    end

    respond_to do |format|
      format.html { render layout: false }
    end
  end

	def available
		@recipes = current_user.available_recipes
	end

  def show
  end

  def new 
    @recipe = Recipe.new
  end

  def fork
    @source = Recipe.find params[:id]
    @recipe = @source.dup
    @recipe.name += " [fork: #{SecureRandom.urlsafe_base64(8)}]"
    @source.ingredients.each do |ingredient|
      @recipe.ingredients << ingredient.dup
    end

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
  
	def edit_labels
	end

	def add_label
		unless params[:name].blank?
      name = params[:name].strip.titleize
			@recipe.label_list.add name
			@recipe.save
		end
    respond_to do |format|
      format.html { redirect_to [:edit_labels, @recipe], notice: "Label was successfully added." }
      format.json { head :no_content }
    end
	end

	def remove_label 
		unless params[:name].blank?
			@recipe.label_list.remove params[:name]
			@recipe.save
		end
    respond_to do |format|
      format.html { redirect_to [:edit_labels, @recipe], notice: "Label was successfully removed." }
      format.json { head :no_content }
    end
	end

  private

  def set_recipe
    @recipe = Recipe.find params[:id]
  end

  def recipe_params
    params.require(:recipe).permit(:name, :timing, :preparation, :cover_image, ingredients_attributes: [:id, :name, :quantity, :unit, :_destroy])
  end
end
