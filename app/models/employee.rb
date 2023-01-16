class Employee < ApplicationRecord
    has_many :requests
    has_many :user
end
