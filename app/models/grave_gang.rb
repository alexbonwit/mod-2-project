class GraveGang < ApplicationRecord
    belongs_to :location
    has_many :members
    has_many :grave_gang_entertainments
    has_many :festivities, through: :grave_gang_entertainments, source: :entertainment
    has_many :decorations, through: :members, source: :theme
    validates :name, uniqueness: true
end