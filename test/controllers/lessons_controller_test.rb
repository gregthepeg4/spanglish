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

  test "gets new" do
    @newLesson=Lesson.new
    get new_lesson_path
    assert_response :success
    assert_select "form", 1
  end

  test "should create lesson" do
    assert_difference('Lesson.count') do
      post lessons_url, params: {
        "lesson"=>{
          "title"=>"Spanish Nouns For Beginners",
          "explanation"=>"Nouns are really easy and we are going to have a lot of fun",
          "video_url"=>"www.youtube.com/spanish-nouns",
          "examples_attributes"=>{
            "0"=>{
              "phrase"=>"El gato"
            }
          },
          "patterns_attributes"=>{
            "0"=>{
              "sequence"=>"Infinitive Noun"
            }
          },
          "activities_attributes"=>{
            "0"=>{
              "title"=>"Time to practce some nouns",
              "instruction"=>"Try putting the right infinitive infront of the noun",
              "questions_attributes"=>{
                "0"=>{
                  "translation"=>"The dog",
                  "answer"=>"El perro",
                  "options"=>"el ella gato casa"
                }
              }
            }
          },
          "quiz_attributes"=>{
            "questions_attributes"=>{
              "0"=>{
                "translation"=>"The whale",
                "answer"=>"El baleno",
                "options"=>"el ella raton azul baleno"
              }
            }
          }
        }
      }
    end
    assert_redirected_to(Lesson.last)
  end



end
