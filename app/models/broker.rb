class Broker < ApplicationRecord

    has_many :jobs
    has_many :trucks, :through => :jobs

    belongs_to :users
    belongs_to :dates

end