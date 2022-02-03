class Location < ApplicationRecord

validates :titre, presence: true
validates :description, presence: true

end
