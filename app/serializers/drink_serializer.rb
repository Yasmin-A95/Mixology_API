class DrinkSerializer < ActiveModel::Serializer
  belongs_to :mixologist, :optional => true
  attributes :id, :name, :ingredients
end
