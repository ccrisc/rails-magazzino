class SuppliersController < ApplicationController
  #include WillPaginate::ActionView

  before_action :set_supplier, only: [:show, :edit, :destroy, :update]

  def index
    @suppliers = current_manager.company.suppliers
    # Search Logic
    if params[:search].present?
      @suppliers = @suppliers.where("name LIKE ?", "%#{params[:search]}%")
    end
    # Pagination
    @suppliers = @suppliers.paginate(page: params[:page], per_page: 10)
    # Sorting
    if params[:sort].present?
      @suppliers = @suppliers.order(params[:sort])
    end
  end

  def show
  end

  def new
    @supplier = Supplier.new
  end

  def create
    @supplier = Supplier.new(supplier_params.merge(company: current_manager.company))
    if @supplier.save
      redirect_to @supplier, notice: 'Fornitore creato correttamente!.'
      #redirect_to suppliers_url, notice: 'supplier was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @supplier.update(supplier_params)
      redirect_to supplier_path, notice: 'Fornitore aggiornato!'
    else
      render :edit
    end
  end

  def destroy
    @supplier.delete
    redirect_to suppliers_url, notice: 'Fornitore eliminato!'
  end

  private

  def set_supplier
    @supplier = current_manager.company.suppliers.find(params[:id])
  end

  def supplier_params
    params.require(:supplier).permit(:name,:email,:phone,:vat_number,:tax_code,:address,:address,:city,:zip_code,:country,:notes,:active)
  end
end

