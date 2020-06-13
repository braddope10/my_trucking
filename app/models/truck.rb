class Truck < ApplicationRecord

    has_many :jobs
    has_many :users, :through => :jobs

    # belongs_to :job
    # belongs_to :user

    validates :make, presence: true
    validates :color, presence: true
    validates :year, length: { is: 4 }
    

    accepts_nested_attributes_for :jobs

    #Tesing
    # belongs_to :job

end