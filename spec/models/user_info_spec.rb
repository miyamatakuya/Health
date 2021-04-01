require 'rails_helper'

RSpec.describe UserInfo, type: :model do
  before do
    @user_info = FactoryBot.build(:user_info)
end
 describe '体重の登録' do
   context '体重と身長が保存できるとき' do
   it 'weightとheightが存在していれば保存できること' do
   expect(@user_info).to be_valid
 end
end
 context '体重と身長が保存できない場合' do
  it 'weightとheightが空では保存できないこと' do
   @user_info.weight = ''
   @user_info.height = ''
   @user_info.valid?
   expect(@user_info.errors.full_messages).to include("Height can't be blank")
 end

   it 'userが紐付いていないと保存できないこと' do
    @user_info.user = nil
    @user_info.valid?
    expect(@user_info.errors.full_messages).to include("User must exist")
   end
  end
 end
end
