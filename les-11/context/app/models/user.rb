# TODO:
# 1. Обеспечить проверку данных при создании/обновлении пользователя
# 2. Создавать хэш пароля при создании пользователя

class User < ApplicationRecord

  def self.authenticate email, password
  end

  def hash_password
  end

end
