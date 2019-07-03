require 'test_helper'

class LessonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lessonOne= lessons(:lessonOne)
    @lessonTwo= lessons(:lessonTwo)
  end
  test "gets index" do
    get lessons_path
    assert_response :success
  end

  test "gets show" do
    get lesson_path(@lessonOne)
    assert_response :success
    assert_select "h1", @lessonOne.title
  end


end
