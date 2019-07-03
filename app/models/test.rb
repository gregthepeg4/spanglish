class Test < ApplicationRecord
  has_many :questions, as: :questionable
end
