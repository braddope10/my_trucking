class User < ApplicationRecord

    has_many :trucks
    has_many :jobs
    has_many :brokers, :through => :jobs
    has_many :dates

    validates :username, uniqueness: true, presence: true, length: { minimum: 5 }
    validates :email, uniqueness: true, presence: true
    validates :password, length: { in: 6..18 }

    has_secure_password

end