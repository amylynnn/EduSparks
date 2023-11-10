class QuestionsController < ApplicationController
  def show
    @quiz = Quiz.find(params[:quiz_id])
    # @question = Question.find(params[id])
    @question = @quiz.questions.find(params[:id])
  end
end
