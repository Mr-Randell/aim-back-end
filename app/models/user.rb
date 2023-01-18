class User < ApplicationRecord
    belongs_to :employee, optional: true
    # belongs_to :requests 
    has_many :assets,  through:  :requests

    has_secure_password
    validates :username, presence: true, uniqueness: true
end
