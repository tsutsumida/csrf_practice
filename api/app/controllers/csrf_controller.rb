class CsrfController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:attache_csrf_token]
  after_action :set_csrf_token_header

  def attache_csrf_token
    render json: {}
  end
end
