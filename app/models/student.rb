class Student < ApplicationRecord
has_many :marks
belongs_to :user
end
