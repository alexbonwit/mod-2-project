class Theme < ApplicationRecord
    has_many :members
    validates :title, uniqueness: true
end