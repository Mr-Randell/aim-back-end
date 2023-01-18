class Category < ApplicationRecord
    belongs_to :assets, optional: true
    # has_many :assets
end
