class QuestionsController < ApplicationController
  def show
    @quiz = Quiz.find(params[:quiz_id])
    @question = @quiz.questions.find_by(id: params[:id])
    @questions = @quiz.questions
    @answers = @question.answers
    @result = Result.find_by(user: current_user, quiz: @quiz)
    Result.create(user: current_user, quiz: @quiz) unless @result.present?
    if UserAnswer.find_by(question: @question).present?
      @user_answer = UserAnswer.find_by(question: @question)
    else
      @user_answer = UserAnswer.new
    end
  end
end
