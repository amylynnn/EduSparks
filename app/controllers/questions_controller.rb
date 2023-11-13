class QuestionsController < ApplicationController
  def show
    @quiz = Quiz.find(params[:quiz_id])
    @question = @quiz.questions.find_by(id: params[:id])
    @questions = @quiz.questions
    @answers = @question.answers
    @result = current_user.results.find_by(quiz: @quiz)
    if UserAnswer.find_by(question: @question).present?
      @user_answer = UserAnswer.find_by(question: @question)
    else
      @user_answer = UserAnswer.new
    end
  end
end
