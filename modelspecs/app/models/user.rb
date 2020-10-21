class User < ActiveRecord::Base
    validates :first_name, :last_name, :email, presence: true
    validates :email, presence: true, uniqueness: { case_sensitive: false }
end
