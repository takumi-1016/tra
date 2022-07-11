class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save 
      redirect_to root_path, notice: "ユーザー「#{@user.name}」を新規登録しました。"
    else
      render :new
    end
  end
  

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def update
    @user = User.find(params[:id])
    
    if @user.update(user_params)
      redirect_to users_path, notice: "ユーザー情報を更新しました。"
    else
      render :edit
    end
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path, notice: "ユーザーを削除しました。"
  end
  
  
  

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :description ,:image)
  end
  
end
