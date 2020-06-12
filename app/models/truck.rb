class Truck < ApplicationRecord

    has_many :jobs
    has_many :brokers, :through => :jobs

    belongs_to :user
    belongs_to :book

end