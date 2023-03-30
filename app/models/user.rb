class User < ApplicationRecord
  include BCrypt

  def authenticate(input_password)
    password == input_password
  end

  def password
    @password ||= Password.new(password_digest)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_digest = @password
  end
end
