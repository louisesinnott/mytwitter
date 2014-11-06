    class User < ActiveRecord::Base
      has_many :microposts, dependent: :destroy   #  CHANGED
    	# Replace current before_save code with the following:
      before_save do |user| 
              user.email = email.downcase 
            user.remember_token = SecureRandom.urlsafe_base64
            end
       # End of replacement
      validates :name, presence: true, length: { in: 9..30 }
      VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
      validates :email, presence: true, 
                        format: { with: VALID_EMAIL_REGEX },
                        uniqueness: { case_sensitive: false }

    validates :password, presence: true, length: { minimum: 6 }
    validates :password_confirmation, presence: true
     has_secure_password  

     def feed
            Micropost.where("user_id = ?", id)
          end
    end    
