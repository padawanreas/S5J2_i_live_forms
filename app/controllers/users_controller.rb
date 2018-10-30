class UsersController < ApplicationController

  def index
    @user=User.all
  end

  def new
    @user=User.new
  end

  def create
=begin
    @user = User.create('username' => params[:username],
                        'email' => params[:email],
                        'bio' => params[:bio])
=end
    @user = User.create('username' => params.require(:user)[:username],
                    'email' => params.require(:user)[:email],
                    'bio' => params.require(:user)[:bio])
    redirect_to users_path
  end

end
