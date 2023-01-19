class User < ApplicationRecord
    belongs_to :employee, optional: true
    # belongs_to :requests 
    has_many :requests
    has_many :assets,  through:  :requests

    has_secure_password
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }
    validates :password, presence: true, length: { minimum: 4 }
    validates :phonenumber, presence: true, length: { minimum: 8 }
end
