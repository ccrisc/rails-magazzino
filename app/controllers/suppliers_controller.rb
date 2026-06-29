class SuppliersController < ApplicationController
  #include WillPaginate::ActionView

  before_action :set_supplier, only: [:show, :edit, :destroy]

  def index
    @suppliers = Supplier.all
    # Search Logic
    if params[:search].present?
      @suppliers = @suppliers.where("address LIKE ?", "%#{params[:search]}%")
    end
    # Pagination
    @suppliers = @suppliers.paginate(page: params[:page], per_page: 10)
    # Sorting
    if params[:sort].present?
      @suppliers = @suppliers.order(params[:sort])
    end
  end

  def show1
  end

  def new
    @supplier = Supplier.create
  end

  def create
    @supplier = Supplier.new(supplier_params)
    if @supplier.save
      redirect_to @supplier, notice: 'Cliente creato correttamente!.'
      #redirect_to suppliers_url, notice: 'supplier was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @supplier.delete
    redirect_to suppliers_url, notice: 'Cliente eliminato!'
  end

  private

  def set_supplier
    @supplier = Supplier.find(params[:id])
  end

  def supplier_params
    params.require(:supplier).permit(:name,:email,:phone,:vat_number,:tax_code,:address)
  end
end

