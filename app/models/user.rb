class User < ApplicationRecord
    has_secure_password
    has_many :posts

    validates :email, presence: true
    validates :email, uniqueness: true
    validates :user_name, presence: true
    validates :user_name, uniqueness: true
    validates :password, presence: true
    validates :password, length: { in: 6..20}
end
