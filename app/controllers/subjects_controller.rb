class SubjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @subjects = Subject.all
    if params[:query].present?
      @subjects = @subjects.where("name ILIKE ?", "%#{params[:query]}%")
    end
  end

  def show
    # @subject = Subject.find(params[:id])
    # @quizzes = @subject.quizzes
    @subject = Subject.find_by(id: params[:id])

    if @subject.nil?
      # si Sujet non trouvé, rediriger vers une autre action
      redirect_to subjects_path
    else
      if params[:search].present?
        @quizzes = Quiz.where("name ILIKE ?", "%#{params[:search]}%")
      else
        @quizzes = @subject.quizzes
      end
      # @response = chatgpt_call(params[:query]) unless params[:query].nil?
    end
  end

  private

  def chatgpt_call(message)
    options = {
      headers: {
        'Content-Type' => 'application/json',
        'Authorization' => "Bearer #{ENV.fetch('GPT_API_KEY')}"
      }
    }
    body = {
      model: 'gpt-3.5-turbo', messages: [{ role: 'user', content: message }]
    }

    return HTTParty.post('https://api.openai.com/v1/chat/completions', body: body.to_json, headers: options[:headers])
  end
end
