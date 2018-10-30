class UsersController < ApplicationController
  def new
    @user = User.all
  end

  def create
    @user = User.all
  end
end
