class UserAnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @quiz = @question.quiz
    @answer = @question.answers.find_by(content: user_answer_params[:answer])
    @result = Result.find_by(user: current_user, quiz: @quiz)
    UserAnswer.create(answer: @answer, user: current_user, result: @result, question: @question)
    @next_question = Question.find(@question.id + 1)
    if @next_question.present? && @next_question.quiz == @quiz
      redirect_to quiz_question_path(@quiz, @question.id + 1)
    else
      redirect_to result_path(@result)
    end
  end

  def update
    @user_answer = UserAnswer.find(params[:id])
    @question = Question.find(params[:question_id])
    @quiz = @question.quiz
    @answer = @question.answers.find_by(content: user_answer_params[:answer])
    @result = @user_answer.result
    @user_answer.update(answer: @answer)
    @next_question = Question.find(@question.id + 1)
    if @next_question.present? && @next_question.quiz == @quiz
      redirect_to quiz_question_path(@quiz, @question.id + 1)
    else
      redirect_to result_path(@result)
    end
  end

  private

  def user_answer_params
    params.require(:user_answer).permit(:answer)
  end
end
