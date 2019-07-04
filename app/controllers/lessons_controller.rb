class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show]
  def index
  end

  def show
  end

  def new
    @lesson=Lesson.new
    @lesson.examples.build
    @lesson.patterns.build
    @lesson.activities.build
    @lesson.activities.first.questions.build
    @lesson.build_quiz
    @lesson.quiz.questions.build
  end

  def create
    @lesson= Lesson.create(lesson_params)
    redirect_to @lesson
  end

  private
  def set_lesson
    @lesson=Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:title, :explanation, :video_url, examples_attributes: [:phrase], patterns_attributes: [:sequence], activities_attributes: [:title, :instruction, questions_attributes: [:translation, :answer, :options]], quiz_attributes: [questions_attributes: [:translation, :answer, :options]])
  end
end
