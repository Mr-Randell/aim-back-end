class Asset < ApplicationRecord
  belongs_to :category, optional: true
  has_many :requests
  has_many :users,  through: :requests
  # belongs_to :request
end
