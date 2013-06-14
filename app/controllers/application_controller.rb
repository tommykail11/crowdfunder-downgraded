class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :nav_state

  protected

  def not_authenticated
    redirect_to new_session_path, :alert => 'Make sure you log in first.'
  end

  def nav_state
  end
end
