class Broker < ApplicationRecord

    has_many :jobs
    has_many :trucks, :through => :jobs

    belongs_to :user
    belongs_to :book

end