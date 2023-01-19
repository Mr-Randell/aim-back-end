class RequestSerializer < ActiveModel::Serializer
  attributes :id, :status, :urgency, :user_id, :asset_id, :quantity
  
end
