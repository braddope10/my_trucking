class Broker < ApplicationRecord

    has_many :jobs
    has_many :users, :through => :jobs

    # belongs_to :job
    # belongs_to :user

    accepts_nested_attributes_for :jobs

    scope :filter_duplicates, -> { group(:name).having("count(*) >= 1")}

    #Tesing
    # belongs_to :job

end