class Category < ApplicationRecord
    # belongs_to :assets
    has_many :assets
end
