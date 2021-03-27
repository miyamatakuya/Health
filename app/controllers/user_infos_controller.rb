class UserInfosController < ApplicationController
  before_action :move_to_index, except: :index
  
def index
  @user_infos = UserInfo.all
end


def new
  @user_info = UserInfo.new
end


def create
  weight = params[:user_info][:weight].to_i
  height = params[:user_info][:height].to_i
  bmi = UserInfo.bmi(weight,height)
  UserInfo.create(user_info_params(bmi))

end



def update
   user_info = UserInfo.find(params[:id])
  weight = params[:user_info][:weight].to_i
  height = params[:user_info][:height].to_i
  bmi = UserInfo.bmi(weight,height)
   UserInfo.update(user_info_params(bmi))
end


def edit
  @user_info = UserInfo.find(params[:id])
end

private
  def user_info_params(bmi)
    params.require(:user_info).permit(:weight, :height, :BMI).merge(user_id: current_user.id,BMI: bmi)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
