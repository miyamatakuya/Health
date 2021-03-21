class UserInfosController < ApplicationController
  
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
end


def edit
end

private
  def user_info_params(bmi)
    params.require(:user_info).permit(:weight, :height, :BMI).merge(user_id: current_user.id,BMI: bmi)
  end


end
