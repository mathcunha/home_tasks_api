class Person < ApplicationRecord
    validates_presence_of :name, :email
    has_many :tasks
    has_many :groups
    has_many :homes, through: :groups
end
