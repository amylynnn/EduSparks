class QuestionsController < ApplicationController
  def show
    @quiz = Quiz.find(params[:quiz_id])
    @question = @quiz.questions.find(params[:id])
  end
end
