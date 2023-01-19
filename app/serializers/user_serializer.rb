class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :role, :password_digest, :companyname, :phonenumber, :companysize, :industry
  # belongs_to :employee
  has_many :requests
  has_many :assets, through: :requests
end
