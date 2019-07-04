class Example < ApplicationRecord
  belongs_to :lesson
  validates :phrase, presence: true
end
