class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :remember_controller


  def client_or_attorney_from_user(user)
    client_from_user(user) || attorney_from_user(user)
  end


  def client_from_user(user)
    Client.find_by(user_id: user.id)
  end


  def attorney_from_user(user)
    Attorney.find_by(user_id: user.id)
  end


  def authenticate_admin
    unless current_user.god_mode
      flash[:error] = "Access denied."
      go_back
    end
  end


  def privileged
    @user == current_user or current_user.god_mode
  end


  def go_back
    redirect_to :back rescue redirect_to root_path
  end

  private

    def remember_controller
      gon.action = action_name
    end

end
