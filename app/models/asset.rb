class Asset < ApplicationRecord
    has_many :requests
    has_many :employees, through: :requests
end
