class User < ApplicationRecord
  has_many :posts

  def authenticate(req_password)
    self.password == req_password
  end
end
