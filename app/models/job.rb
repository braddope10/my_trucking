class Job < ApplicationRecord

    belongs_to :users
    belongs_to :brokers
    
    has_many :dates
    has_many :trucks, :through => :dates

end
