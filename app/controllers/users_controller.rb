class UsersController < ApplicationController

  def show
    p params[:id]
    @user = User.find(params[:id])
  end
end
