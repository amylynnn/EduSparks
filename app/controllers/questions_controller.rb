class QuestionsController < ApplicationController
  def show
    @quiz = Quiz.find(params[:quiz_id])
    # @question = Question.find(params[id])
    @question = @quiz.questions.find(params[:id])
    @result = current_user.results.find_by(quiz: @quiz)
    @user_answer = UserAnswer.new
  end
end
