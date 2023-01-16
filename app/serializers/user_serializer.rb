class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :role
  belongs_to :employee
  has_many :requests
  has_many :assets, through: :requests
end
