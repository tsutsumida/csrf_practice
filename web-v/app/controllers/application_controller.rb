class ApplicationController < ActionController::Base
  before_action :check_user_session
  include SessionsHelper

  def check_user_session
    redirect_to :login unless current_user
  end
end
