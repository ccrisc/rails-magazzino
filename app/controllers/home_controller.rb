class HomeController < ApplicationController
  def index
    @user_count = User.count
    @item_count = Item.count
    @order_count = Order.count
  end
end
