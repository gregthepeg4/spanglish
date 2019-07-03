class Pattern < ApplicationRecord
  belongs_to :lesson
  def split_sequence
    sequence.split(" ")
  end
end
