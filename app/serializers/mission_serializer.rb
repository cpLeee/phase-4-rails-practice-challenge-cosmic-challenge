class MissionSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :planet 
  has_one :scientist 
end
