class Date < ApplicationRecord

    belongs_to :users
    belongs_to :trucks
    belongs_to :jobs
    belongs_to :brokers
    
end