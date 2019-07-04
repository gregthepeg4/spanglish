require 'test_helper'

class ActivityTest < ActiveSupport::TestCase
  setup do
    @activityOne= activities(:activityOne)
    @lessonOne=lessons(:lessonOne)
    @questionOne= questions(:questionOne)
  end

  test "an activity belongs to a lesson" do
    assert_equal @activityOne.lesson, @lessonOne
  end

  test "an activity can have many questions" do
    assert_equal 1, @activityOne.questions.count
    assert_equal @activityOne.questions.first, @questionOne
  end

end
