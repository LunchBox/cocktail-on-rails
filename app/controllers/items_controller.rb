class ItemsController < ApplicationController
  before_action :set_item, only: %i[ show edit update destroy edit_labels add_label remove_label ]

  # GET /items or /items.json
  def index
    if !params[:q].blank?
      @keyword = params[:q].strip
      @items = Item.search_by(params[:q])
		elsif !params[:label].blank?
			@items = Item.tagged_with params[:label], on: :labels
    else
      @items = Item.ordered
    end
		@pagy, @items = pagy(@items)
  end

	def my_bar
		@items = current_user.bar_items
		unless params[:label].blank?
			@items = @items.tagged_with params[:label], on: :labels
		end
	end

	def my_wish
		@items = current_user.wish_items
		unless params[:label].blank?
			@items = @items.tagged_with params[:label], on: :labels
		end
	end

  def search
    if params[:q].blank?
      @items = []
    else
      @keyword = params[:q].strip
      @items = Item.search_by(@keyword)
    end

    respond_to do |format|
      format.html { render layout: false }
    end
  end

  # GET /items/1 or /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items or /items.json
  def create
    @item = Item.new(item_params)
		@item.user = current_user

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: "Item was successfully created." }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1 or /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to item_url(@item), notice: "Item was successfully updated." }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1 or /items/1.json
  def destroy
    @item.destroy

    respond_to do |format|
      format.html { redirect_to :items, notice: "Item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

	def edit_labels
	end

	def add_label
		unless params[:name].blank?
			name = Item.format_name params[:name]
			Item.find_or_create_by name: name
			@item.label_list.add name
			@item.save
		end
    respond_to do |format|
      format.html { redirect_to [:edit_labels, @item], notice: "Label was successfully added." }
      format.json { head :no_content }
    end
	end

	def remove_label 
		unless params[:name].blank?
			@item.label_list.remove params[:name]
			@item.save
		end
    respond_to do |format|
      format.html { redirect_to [:edit_labels, @item], notice: "Label was successfully removed." }
      format.json { head :no_content }
    end
	end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:name, :cover_image, :parent_name, :label_list, labels_attributes: [:id, :name, :quantity, :unit, :_destroy])
    end
end
