class Admin::User < ApplicationRecord
  before_save :crypt_password
  after_commit :add_default_photo, on: [:create, :update]
  #Relacionamentos
  has_one_attached :photo
  #Traduçôes
  HUMANIZED_ATTRIBUTES = {
    :name => "Nome",
    :email => "E-mail",
    :password => "Senha"
  }
  def self.human_attribute_name(attr, options = {}) # 'options' wasn't available in Rails 3, and prior versions.
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end
  #Validacoes
  validates :name, presence: true
  validates :password, presence: true, on: :create
  validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
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
