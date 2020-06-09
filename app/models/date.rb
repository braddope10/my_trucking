class Date < ApplicationRecord

    has_many :jobs
    has_many :brokers
    has_many :trucks
    
    belongs_to :users

end