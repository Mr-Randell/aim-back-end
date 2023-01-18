class RequestSerializer < ActiveModel::Serializer
  attributes :id, :status, :urgency, :user_id, :asset_id, :quantity
  # belongs_to :user
  belongs_to :asset
  #  has_many :assets
end
