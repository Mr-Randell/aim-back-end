class Asset < ApplicationRecord
    belongs_to :category
    belongs_to :request
end
