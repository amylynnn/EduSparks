class ResultsController < ApplicationController
  def show
    @result = Result.find(params[:id])
    @user_answers = @result.user_answers
    @quiz = @result.quiz
    @questions = @quiz.questions
    good_answers = @user_answers.map(&:answer).select(&:correct)
    @percentage = (good_answers.count.to_f/ @questions.count.to_f).to_f * 100
  end
end
