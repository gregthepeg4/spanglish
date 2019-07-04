require 'test_helper'

class QuizTest < ActiveSupport::TestCase
  setup do
    @quizOne= quizzes(:quizOne)
    @lessonOne=lessons(:lessonOne)
    @questionTwo= questions(:questionTwo)
  end

  test "a quiz belongs to a lesson" do
    assert_equal @quizOne.lesson, @lessonOne
  end

  test "a quiz can have many questions" do
    assert_equal 1, @quizOne.questions.count
    assert_equal @quizOne.questions.first, @questionTwo
  end
end
