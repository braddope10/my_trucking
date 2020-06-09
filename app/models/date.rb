class Date < ApplicationRecord

    belongs_to :users
    belongs_to :trucks
    belongs_to :brokers

    has_many :jobs
end