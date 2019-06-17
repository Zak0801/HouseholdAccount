class UserController < ApplicationController
  def new
  end

  def create
    @user = User.new(name: params[:myname], password: params[:password])
    if @user.save
      session[:user_id] = @user.id
      redirect_to("/item/index")
    else
      render("user/new")
    end
  end

  def login_form
  end

  def login
    @user = User.find_by(password: params[:password])
    if @user
      session[:user_id] = @user.id
      redirect_to("/item/index")
    else
      render("user/login_form")
    end
  end

end
