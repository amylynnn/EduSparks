class SubjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @subjects = Subject.all
  end

  def show
    # @subject = Subject.find(params[:id])
    # @quizzes = @subject.quizzes
    @subject = Subject.find_by(id: params[:id])
    if @subject.nil?
      # si Sujet non trouvé, rediriger vers une autre action
      redirect_to subjects_path
    else
      # Sujet trouvé, récuperer les quiz associés
      @quizzes = @subject.quizzes
    end
  end
end
