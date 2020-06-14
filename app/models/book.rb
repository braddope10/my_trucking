class Book < ApplicationRecord

    has_many :jobs
    has_many :users, :through => :jobs

    validates :monthdayyear, presence: true

    accepts_nested_attributes_for :jobs

    # scope :filter_duplicates, -> { group(:monthdayyear).having("count(*) >= 1")}

end