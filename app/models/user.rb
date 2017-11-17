class User < ApplicationRecord
    has_one   :detail
   has_secure_password
   validates :account,  presence: true ,exclusion: { in: %w(admin superuser) } ,length: { maximum: 30 }
   validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
   validates  :phone ,uniqueness: true
end
