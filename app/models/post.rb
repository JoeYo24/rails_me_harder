class Post < ApplicationRecord
    validates :username, presence: true
end
