class User < ApplicationRecord
    has_secure_password
    validates :name, presence: true, uniqueness: true, length: { minimum: 4 }
    validates :email_address, presence: true, uniqueness: true
    validates_format_of :email_address, with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: 'is not a valid email address'
end