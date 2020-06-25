class Truck < ApplicationRecord

    has_many :jobs
    has_many :users, :through => :jobs

    validates :make, presence: true
    validates :color, presence: true
    validates :year, length: { is: 4 }
    
    accepts_nested_attributes_for :jobs

end