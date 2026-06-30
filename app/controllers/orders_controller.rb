class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def index
    @orders = current_manager.company.orders
    if params[:search].present?
      @orders = @orders.where("CAST(id AS TEXT) ILIKE ?", "%#{search_param}%")
    end
    @orders = @orders.paginate(page: params[:page], per_page: 10)
    if params[:sort].present?
      @orders = @orders.order(params[:sort])
    end
  end


  def new
    @order = Order.new
    @order.order_items.build
  end


  def create
    @order = Order.new(order_params.merge(company: current_manager.company))

    if @order.save
      redirect_to orders_path, notice: 'Ordine creato con successo!'
    else
      render :new
    end
  end

  def edit
    @order = Order.find(params[:id])
    @order.order_items.build unless @order.order_items.present?
  end

  def update
    if @order.update(order_params)
      redirect_to orders_path, notice: 'Ordine aggiornato!'
    else
      render :edit
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def destroy
    @order = Order.find(params[:id]) # Fetch the order by its ID
    @order.destroy
    redirect_to orders_url, notice: 'Ordine eliminato!'
  end

  private
  def set_order
    @order = current_manager.company.orders.find(params[:id])
  end

  # app/controllers/orders_controller.rb
  def order_params
    params.require(:order).permit(:user_id, order_items_attributes: [:id, :item_id, :quantity, :_destroy])
  end

end