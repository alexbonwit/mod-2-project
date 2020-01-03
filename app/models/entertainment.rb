class Entertainment < ApplicationRecord
    has_many :grave_gangs, through: :grave_gang_entertainments
    validates :title, uniqueness: true
end