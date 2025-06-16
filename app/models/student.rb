class Student < ApplicationRecord
    validates :firstname,:lastname,:email, presence: true
end
