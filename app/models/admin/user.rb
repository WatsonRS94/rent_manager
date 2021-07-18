class Admin::User < ApplicationRecord
  before_save :crypt_password
  after_commit :add_default_photo, on: [:create, :update]
  #Relacionamentos
  has_one_attached :photo
  #Validacoes
  validates :name, :email, :password, presence: true
  validates :email, uniqueness: true
  #Scopes
  #Callbacks
  private def add_default_photo
    unless photo.attached?
      self.photo.attach(io: File.open(Rails.root.join("app", "assets", "images", "admin", "photo_default.jpg")), filename: 'photo_default.jpg' , content_type: "image/jpg")
    end
  end
  #Metodos de Classe
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
