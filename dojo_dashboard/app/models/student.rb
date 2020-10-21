class Student < ActiveRecord::Base
  validates :first_name, :last_name, :email, presence:{ message: "must be given please" }, length: { minimum: 2 }
  belongs_to :dojo
end
