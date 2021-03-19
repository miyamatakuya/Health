class UserInfosController < ApplicationController
  
def index
  
end


def new
  @user_info = UserInfo.new
end


def create
  UserInfo.create(user_info_params)
  
end


def update
end


def edit
end

private
  def user_info_params
    params.require(:user_info).permit(:weight, :height, :BMI, :date)
  end

end
