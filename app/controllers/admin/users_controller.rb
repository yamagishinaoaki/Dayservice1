class Admin::UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end
    
  def create
    @user = User.new(user_name: params[:user_name], children_name: params[:children_name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
     
    if @user.save
      redirect_to("/admin/users/create#{@user.id}")
    else
      render :new
    end
  end
    
      
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_user_url, notice: "ユーザー「#{@user.name}」を削除しました。"
  end
     

end
