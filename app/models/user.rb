class User < ActiveRecord::Base
	has_many :posts
	has_many :comentarios
	
	EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

	validates_presence_of :nome, :email
	has_secure_password
	validates_uniqueness_of :email

	validate do
     	errors.add(:email, :invalid) unless email.match(EMAIL_REGEXP)
    end

    def self.authenticate(email, password)
   			user = User.
           find_by(email: email).
           try(:authenticate, password)
 	end



 
end