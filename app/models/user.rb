class User < ApplicationRecord

    has_many :trucks
    has_many :jobs
    has_many :brokers, :through => :jobs
    has_many :dates

end