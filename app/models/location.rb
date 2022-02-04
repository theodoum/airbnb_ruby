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

def self.search_by_rate(search)
    if search
        search_rate = search.to_i
        if self.where({prix: 0..search_rate})
            self.where({prix: 0..search_rate})
        else
            Location.all
        end
    else
        Location.all
    end
end

end
