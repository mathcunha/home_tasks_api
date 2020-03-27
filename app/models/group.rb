class Group < ApplicationRecord
  validates_presence_of :home, :person
  belongs_to :home
  belongs_to :person
end
