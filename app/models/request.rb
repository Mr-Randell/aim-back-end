class Request < ApplicationRecord
    belongs_to :asset, optional: true
    belongs_to :user, optional: true

    validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
end
