require 'test_helper'

class ExampleTest < ActiveSupport::TestCase
  setup do
    @lessonOne= lessons(:lessonOne)
    @exampleOne=examples(:exampleOne)
  end
  test "an example belongs to a lesson" do
    assert_equal @exampleOne.lesson, @lessonOne
  end

  test "an example requires a phrase" do
    @exampleOne.phrase=""
    assert @exampleOne.invalid?, "examples are valid without a phrase"
  end

end
