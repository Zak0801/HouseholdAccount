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

  def logout
    if session[:user_id]
      session[:user_id] = nil
      redirect_to("/item/index")
    end
  end

  def edit_form
  end

  def edit
    @current_user.name = params[:myname]
    @current_user.password = params[:password]
    if @current_user.save
      redirect_to("/item/index")
    else
      render("user/edit_form")
    end
  end

end
