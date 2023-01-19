class AssetSerializer < ActiveModel::Serializer
  attributes :id, :name,  :category_id, :description, :quantity, :status ,:image_url, :location
  # has_many :requests
  # belongs_to :category
  # has_many :users, through: :requests
end
