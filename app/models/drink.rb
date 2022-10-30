class Drink < ApplicationRecord
    belongs_to :mixologist, :optional => true
end
