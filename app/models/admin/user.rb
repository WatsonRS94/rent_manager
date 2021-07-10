class Admin::User < ApplicationRecord
  validates :name, :email, :password, presence: true
  validates :email, uniqueness: true
  before_save :crypt_password

  def crypt_password
    if ( !self.password.blank? and !self.password.nil?) and (self.password.length < 40 && self.password.length > 0)
      write_attribute("password", self.class.sha1(self.password))
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
    Digest::SHA1.hexdigest("bast cake"+password_digest)
  end
end
