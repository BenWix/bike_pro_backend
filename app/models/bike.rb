class Bike < ApplicationRecord
    has_many :repairs
    belongs_to :user
end
