class SubjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
    @quizzes = @subject.quizzes
  end
end
