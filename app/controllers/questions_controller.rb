class QuestionsController < ApplicationController
  def show
    @quiz = Quiz.find(params[:quiz_id])
    @question = @quiz.questions.find_by(id: params[:id])
    @questions = @quiz.questions
    if @question.nil?
      # Au cas où la question n'est pas trouvée
      redirect_to subjects_path, alert: "Question not found."
    else
      @answers = @question.answers
    end
  end
end
