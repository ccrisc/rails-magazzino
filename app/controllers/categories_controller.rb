class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = current_manager.company.categories
    # Search Logic
    if params[:search].present?
      @categories = @categories.where("name LIKE ?", "%#{params[:search]}%")
    end
    # Pagination
    @categories = @categories.paginate(page: params[:page], per_page: 10)
    # Sorting
    if params[:sort].present?
      @categories = @categories.order(params[:sort])
    end
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params.merge(company: current_manager.company))
    if @category.save
      redirect_to categories_url, notice: 'Categoria creata correttamente!.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to categories_url, notice: 'Categoria aggiornata.'
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_url, notice: 'Categoria eliminata!.'
  end


  private

  def set_category
    @category = current_manager.company.categories.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
end

