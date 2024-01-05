class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
    # Search Logic
    if params[:search].present?
      @items = @items.where("name LIKE ?", "%#{params[:search]}%")
    end
    # Pagination
    @items = @items.paginate(page: params[:page], per_page: 10)
    # Sorting
    if params[:sort].present?
      @items = @items.order(params[:sort])
    end
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_url, notice: 'Articolo creato correttamente!.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to items_url, notice: 'Anagrafica cliente aggiornata.'
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to items_url, notice: 'Cliente eliminato!.'
  end

  def orders_by_item
    @item = Item.find(params[:id])
    @orders = @item.orders # Assuming you have a has_many :orders association in your Item model

    render 'orders_by_item'
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :description, :stock)
  end
end

