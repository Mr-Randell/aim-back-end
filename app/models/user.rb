class User < ApplicationRecord
    belongs_to :employee
    # belongs_to :requests 
    has_many :assets,  through:  :requests

    has_secure_password
end
