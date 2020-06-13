class Broker < ApplicationRecord

    has_many :jobs
    has_many :users, :through => :jobs

    # belongs_to :job
    # belongs_to :user

    accepts_nested_attributes_for :jobs

    #Tesing
    # belongs_to :job

end