class SessionsController < ApplicationController
  skip_before_action :check_user_session, only: [:new, :create]
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to :posts
    else
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to :login
  end
end
