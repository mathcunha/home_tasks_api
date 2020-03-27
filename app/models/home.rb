class Home < ApplicationRecord
    validates_presence_of :name, :link
    has_many :tasks, dependent: :destroy
    has_many :groups
    has_many :persons, through: :groups
end
