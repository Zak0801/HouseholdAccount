class HomeController < ApplicationController
  before_action :identify_login_user
  def top
  end
end
