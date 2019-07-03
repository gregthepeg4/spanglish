require 'test_helper'

class LessonTest < ActiveSupport::TestCase
  setup do
    @lessonOne= lessons(:lessonOne)
  end
  test "title and explanation fields can't be empty" do
    assert @lessonOne.valid?
    @lessonOne.title=""
    assert @lessonOne.invalid?
    @lessonOne.title="Title"
    @lessonOne.explanation=""
    assert @lessonOne.invalid?
  end

  test "titles must be unique" do
    @badLesson=Lesson.new(
      title: @lessonOne.title,
      explanation: "This is the explanation",
      video_url: "www.youtube.com/badvideo")
    assert @badLesson.invalid?
    assert_equal ["has already been taken"], @badLesson.errors[:title]
  end


end
