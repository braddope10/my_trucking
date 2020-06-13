class Book < ApplicationRecord

    #option 1
    # belongs_to :job

    #option 2
    has_many :jobs
    has_many :users, :through => :jobs


    # belongs_to :user

    validates :monthdayyear, presence: true


    accepts_nested_attributes_for :jobs

    #Tesing
    # belongs_to :job

end