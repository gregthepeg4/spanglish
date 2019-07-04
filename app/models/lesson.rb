class Lesson < ApplicationRecord
  validates :title, :explanation, presence: true
  validates :title, uniqueness:true
  has_many :examples
  has_many :patterns
  has_many :activities
  has_one :quiz
  accepts_nested_attributes_for :examples, :patterns, :activities, :quiz
end
