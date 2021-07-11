class Admin::User < ApplicationRecord
  validates :name, :email, :password, presence: true
  validates :email, uniqueness: true
  before_save :crypt_password

  def crypt_password
    if ( !password.blank? && !password.nil?) && (password.length < 40 && password.length.positive?)
      write_attribute('password', self.class.sha1(password))
    end
  end

  def self.authenticate(email, password_digest)
    user = Admin::User.find_by_email(email)
    return nil unless user
    return nil if user.password != sha1(password_digest)

    user
  end

  protected
  def self.sha1(password_digest)
    Digest::SHA1.hexdigest("alugar#{password_digest}")
  end
end
