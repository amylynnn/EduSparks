class QuizzesController < ApplicationController
  before_action :authenticate_user!, only: %i[submit results]

  def index
    @quizzess = Quiz.all
    if params[:query].present?
      @quizzess = @quizzes.where("name ILIKE ?", "%#{params[:query]}%")
    end
  end
  def show
    # @quiz = Quiz.find(params[:id])
    @quiz = Quiz.find_by(id: params[:id])
    if @quiz.nil?
      # si Quiz non trouvé, rediriger vers la liste des sujets
      redirect_to subjects_path, alert: 'Quiz not found.'
    else
      # Quiz trouvé, récuperer les questions associées
      @questions = @quiz.questions
      @result = Result.find_by(user: current_user, quiz: @quiz)
      Result.create(user: current_user, quiz: @quiz) unless @result.present?
    end
  end

  def submit
    # Récuperer les réponses soumises par l'utilisateur depuis les paramètres
    @quiz = Quiz.find(params[:quiz_id])
    submitted_answers = params[:user_answers]
    redirect_to results_path(submitted_answers)
  end

  def results
    # Récuperer les bonnes réponses depuis la base de données
    # correct_answers = Quiz.find(params[:quiz_id]).questions.map { |question| question.answers.find_by(correct: true).id.to_s }

    # Récupérer les réponses soumises par l'utilisateur depuis les paramètres
    # submitted_answers = params[:submitted_answers]

    # Comparer les réponses soumises avec les bonnes réponses
    # @score = submitted_answers.count { |answer| correct_answers.include?(answer) }

    # Passer les détails des résultats à la vue
    # @correct_answers = correct_answers

    # Rediriger l'utilisateur vers la page de résultats
    # render 'results'
  end
end
