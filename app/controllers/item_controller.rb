class ItemController < ApplicationController
  def new

  end

  def index
    @items = Item.all
  end

  def create
    @item = Item.new(price: params[:price], category: params[:category], using_month: params[:month], using_day: params[:day])
    if @item.save
      redirect_to("/item/index")
    else
      render("item/new")
    end
  end

end
