class UsersController < ApplicationController
  #include WillPaginate::ActionView

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
    # Search Logic
    if params[:search].present?
      @users = @users.where("name LIKE ?", "%#{params[:search]}%")
    end
    # Pagination
    @users = @users.paginate(page: params[:page], per_page: 10)
    # Sorting
    if params[:sort].present?
      @users = @users.order(params[:sort])
    end
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: 'Cliente creato correttamente!.'
      #redirect_to users_url, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to users_url, notice: 'Anagrafica cliente aggiornata.'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: 'Cliente eliminato!'
  end

  def show_orders
    @user = User.find(params[:id])
    @orders = @user.orders
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :surname, :email)
  end
end

