class Job < ApplicationRecord

    # has_many :dates
    # has_many :trucks, :through => :dates

    belongs_to :user
    belongs_to :broker
    belongs_to :book
    belongs_to :truck

end