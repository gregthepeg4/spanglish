require 'test_helper'

class PatternTest < ActiveSupport::TestCase
  setup do
    @patternOne= patterns(:patternOne)
    @lessonOne=lessons(:lessonOne)
  end

  test "patern.split_sequence returns an array" do
    assert @patternOne.sequence.kind_of?(String)
    assert @patternOne.split_sequence.kind_of?(Array)
  end

  test "a pattern belongs to a lesson" do
    assert_equal @patternOne.lesson, @lessonOne
  end
end
