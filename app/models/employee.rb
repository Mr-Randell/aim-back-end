class Employee < ApplicationRecord
    belongs_to :user, optional: true

    validates :name, presence: true, length: { minimum: 3 }
    validates :location, presence: true
    validates :joining_date, presence: true
    validates :job_title, presence: true, length: { minimum: 3 }
end
