class SessionsController < ApplicationController
  def new
  end

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_to :root, :notice => "Thanks for visiting us again."
    else
      flash.now[:alert] = "Sorry, but we don't recognize your information. Please try again?"
      render :new
    end
  end

  def destroy
    logout
    redirect_to :root, notice: "Thanks for stopping by... Hope to see you again soon!"
  end
end
