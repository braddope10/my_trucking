class Job < ApplicationRecord

    belongs_to :user
    belongs_to :broker
    belongs_to :book
    belongs_to :truck

    validates :start_time, presence: true
    validates :end_time, presence: true
    validates :material, presence: true
    validates :weight, presence: true
    validates :pickup, presence: true
    validates :dropoff, presence: true
    validates :driver, presence: true
    validates :contact_name, presence: true
    validates :contact_number, presence: true, length: { is: 10 }
    validates :hourly_rate, presence: true
    validates :po_number, presence: true, uniqueness: true


    accepts_nested_attributes_for :broker, :book, :truck, :allow_destroy => true, :reject_if => :all_blank

end