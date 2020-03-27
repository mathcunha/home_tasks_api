class Task < ApplicationRecord
  validates_presence_of :title, :hour, :home
  belongs_to :home
  has_many :todos
end
