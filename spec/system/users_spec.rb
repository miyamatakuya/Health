require 'rails_helper'

RSpec.describe 'ログイン', type: :system do
  before do
    @user = FactoryBot.create(:user)
  end


  it '誤った情報ではユーザー新規登録ができずに新規登録ページへ戻ってくる' do
    # トップページに移動する
    visit root_path
    # トップページにサインアップページへ遷移するボタンがあることを確認する
    expect(page).to have_link '新規登録', href: new_user_registration_path
    # 新規登録ページへ移動する
    visit new_user_registration_path
    # ユーザー情報を入力する
    fill_in 'nickname', with: @user.nickname
    fill_in 'email', with: @user.email
    fill_in 'password', with: @user.password
    fill_in 'password_confirmation', with: @user.password_confirmation
    # サインアップボタンを押してもユーザーモデルのカウントは上がらないことを確認する
    expect do
      find('input[name="commit"]').click
    end.to change { User.count }.by(1)
    # 新規登録ページへ戻されることを確認する
    expect(current_path).to eq('/users')
  end
end
