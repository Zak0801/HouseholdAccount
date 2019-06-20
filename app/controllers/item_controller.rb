class ItemController < ApplicationController
  before_action :forbid_not_login_user

  def new
    @item = Item.new
  end

  def index
    @user = User.find_by(id: @current_user.id)
    @items = Item.where(user_id: @user.id)
  end

  def create
    @item = Item.new(price: params[:price], 
                    category: params[:category], 
                    product_name: params[:product_name],
                    using_month: params[:month], 
                    using_day: params[:day],
                    user_id: @current_user.id)
    if @item.save
      redirect_to("/item/index")
    else
      render("item/new")
    end
  end

  def edit_form
    @item = Item.find_by(id: params[:id])
  end

  def edit
    @item = Item.find_by(id: params[:id])
    @item.price = params[:price]
    @item.category = params[:category]
    @item.using_month = params[:month]
    @item.using_day = params[:day]
    if @item.save
      redirect_to("/item/index")
    else
      render("item/edit_form")
    end 
  end

  def destroy
    @item = Item.find_by(id: params[:id])
    @item.destroy
    redirect_to("/item/index")
  end

  def month
    @month = Item.find_by(using_month: params[:using_month])
    @items = Item.where(using_month: @month.using_month)
  end

  def forbid_not_login_user
    if !@current_user
      flash[:notice] = "ログインしてください"
      redirect_to("/")
    end
  end

end
