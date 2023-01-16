class AssetSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :category, :description, :quantity
  has_many :requests
  belongs_to :category
  has_many :users, through: :requests
end
