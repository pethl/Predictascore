class User < ActiveRecord::Base
  attr_accessible :admin, :email, :name, :password, :password_confirmation, :wins
  has_secure_password
  
  before_save { |user| user.name = name.downcase }
  
    before_save :create_remember_token

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
                    
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

     def self.import(file)
         CSV.foreach(file.path, headers: true) do |row|
            User.create! row.to_hash
        end
        end

      private

          def create_remember_token
            self.remember_token = SecureRandom.urlsafe_base64
          end




end
