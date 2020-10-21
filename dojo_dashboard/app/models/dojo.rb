class Dojo < ActiveRecord::Base
    validates :branch, :street, :city, :state, presence:{ message: "must be given please" }, length: { minimum: 2 }
    has_many :students
end
