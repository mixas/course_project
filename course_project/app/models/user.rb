class User < ActiveRecord::Base
  
  has_and_belongs_to_many :roles
  
  ROLES = %w[admin student]
  
  def role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
  end
  
  attr_accessor :password
  attr_accessible :name, :email, :password, :password_confirmation, :surname
  
  validates :password, :presence     => true,
                       :confirmation => true,
                       :length       => { :within => 6..30 }
                     
  validates :name, :presence => true,
                   :length => { :within => 2..20 }
                  
  validates :surname, :presence => true,
                      :length => { :within => 2..20 }
               
  validates :email, :presence => true,
                    :uniqueness => true
                     
  
  before_save :encrypt_password

  def has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end
  
  def self.authentificate(email, submitted_password)
    user = User.find_by_email(email)
    return nil if user.nil?
    return user if user.has_password?(submitted_password)
  end
  
  def self.authentificate_with_salt(id, cookie_salt)
    user = User.find_by_id(id)
    return nil if user.nil?
    return user if user.salt == cookie_salt
  end

  private

    def encrypt_password
      self.salt = make_salt if new_record?
      self.encrypted_password = encrypt(password)
    end

    def encrypt(string)
      secure_hash("#{salt}--#{string}")
    end

    def make_salt
      secure_hash("#{Time.now.utc}--#{password}")
    end

    def secure_hash(string)
      Digest::SHA2.hexdigest(string)
    end
end