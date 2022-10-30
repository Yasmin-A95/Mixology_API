class MixologistSerializer < ActiveModel::Serializer
  has_many :drinks
  attributes :id, :name 
end
