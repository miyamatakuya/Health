class UsersController < ApplicationController

  def show
    @user_info = UserInfo.find(params[:id])
    
  end
end
