class ResultsController < ApplicationController
  def show
    @result = Result.find(params[:id])
    @user_answers = @result.user_answers
    @quiz = @result.quiz
    @questions = @quiz.questions
    @good_answers = @user_answers.select { |ua| ua.answer.correct if ua.answer.present? }
    @percentage = (@good_answers.count.to_f / @questions.count.to_f) * 100
  end
end
