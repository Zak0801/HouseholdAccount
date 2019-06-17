class UserController < ApplicationController
  def new
    @user = User.new(name: params[:myname], password: params[:password])
    @user.save
  end
end
