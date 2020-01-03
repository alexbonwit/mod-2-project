class Member < ApplicationRecord
    belongs_to :grave_gang
    belongs_to :theme
    validates :username, uniqueness: { case_sensitive: false }
    validates :password_digest, presence: true
    validates :birth_date, presence: true
    # validates_confirmation_of :password
    has_secure_password
end