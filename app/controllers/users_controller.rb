class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new params[:user]
    if @user.save
      auto_login(@user)
      redirect_to root_path, notice: "Thanks for creating an account... Enjoy Crowdfunder Downgraded!"
    else
      render :new
    end
  end
end
