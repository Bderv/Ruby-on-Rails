class Blog < ActiveRecord::Base
    validates :name, :description, presence: true
    has_many :owners
    has_many :posts
    has_many :messages, through: :posts
end
