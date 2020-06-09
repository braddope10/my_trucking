class Truck < ApplicationRecord

    has_many :jobs
    has_many :brokers, :through => :jobs

    belongs_to :users
    belongs_to :dates

end