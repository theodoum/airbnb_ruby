class Location < ApplicationRecord

validates :titre, presence: true
validates :description, presence: true
validates :nbChambre, presence: true
validates :nbCouchage, presence: true
validates :ville, presence: true
validates :rue, presence: true
validates :numRue, presence: true
validates :lat, presence: true
validates :long, presence: true
validates :prix, presence: true
validates :photos, presence: true

end
