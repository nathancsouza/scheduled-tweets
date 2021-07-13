class User < ApplicationRecord

    has_many :twitter_accounts
    has_secure_password

    validates :email, uniqueness: true, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" }
end
