class User < ApplicationRecord

    has_many :jobs
    has_many :trucks, :through => :jobs
    has_many :brokers, :through => :jobs
    has_many :books, :through => :jobs

    validates :username, uniqueness: true, presence: true, length: { minimum: 5 }
    validates :email, uniqueness: true, presence: true
    validates :password, length: { in: 6..18 }

    has_secure_password

    def self.create_facebook_auth(auth)
        self.find_or_create_by(email:auth['info']['email']) do |u|
            u.username = auth['info']['name']
            u.password = auth['uid']
        end
    end

    

end