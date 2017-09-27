class Post < ApplicationRecord
    belongs_to :user

    validates :text, presence: true
    validates :text, length: { in: 1..140 }
end
