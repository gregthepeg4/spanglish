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

  test "lessons can have many examples" do
    assert_equal 2, @lessonOne.examples.count
    assert @lessonOne.examples.first.kind_of?(Example)
  end

  test "lessons can have activities" do
    assert_equal 1, @lessonOne.activities.count
    assert @lessonOne.activities.first.kind_of?(Activity)
  end

  test "lessons can have many patterns" do
    assert_equal 1, @lessonOne.patterns.count
    assert @lessonOne.patterns.first.kind_of?(Pattern)
  end

  test "lessons can have one quiz" do
    assert @lessonOne.quiz.kind_of?(Quiz)
  end


end
