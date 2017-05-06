class User < ApplicationRecord
	validates :name, presence: true
	validates :mail, presence: true, uniqueness: true
	validates :password , presence: true
	validates :confirm_password , presence: true
	validates :mobile, presence: true, numericality: true
	validates :address, presence:true
  has_one :image
  accepts_nested_attributes_for :image
    before_save :encrypt_password
    before_validation :verify_password
    def encrypt_password
       self.password = Digest::MD5.hexdigest(password)
       self.confirm_password = Digest::MD5.hexdigest(confirm_password)
    end
    def verify_password
     	if password != confirm_password
           errors.add(:base, "password & confirm_password are not equal!" )
    	end
    end
	def self.authenticate(mail, password)
		if @user = User.where(mail: mail, password: Digest::MD5.hexdigest(password)).last
           @user
       else
       	nil
       end
	end
end
