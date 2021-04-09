class UsersController < ApplicationController

  def show
    @user_info = UserInfo.find(params[:id]) 
  end

  def guest_sign_in
    user = User.find_or_create_by!(email: 'guest@example.com', nickname:  'guest') do |user|
      user.password = SecureRandom.urlsafe_base64
      
    end
    sign_in user
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end

end
