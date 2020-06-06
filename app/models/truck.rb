class Truck < ApplicationRecord

    belongs_to :uses

    has_many :dates
    has_many :jobs, :through => :dates

end