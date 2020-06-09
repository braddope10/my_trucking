class Broker < ApplicationRecord

    has_many :jobs
    has_many :users, :through => :jobs
    has_many :dates
    
end