module ApplicationHelper

  def get_csrf_token_from_api
    require 'uri'
    require 'net/http'

    uri = URI('http://csrf_api_1:3010/csrf/attache_csrf_token')
    res = Net::HTTP.get_response(uri)
    logger.debug("#{res}")
    return res
  end
end
