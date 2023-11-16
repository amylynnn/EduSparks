class AddVideoUrlToQuizzes < ActiveRecord::Migration[7.0]
  def change
    add_column :quizzes, :video_url, :string
  end
end
