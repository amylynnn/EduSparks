class Result < ApplicationRecord
  belongs_to :quiz
  belongs_to :user
  has_many :answered_questions
  has_many :user_answers, through: :answered_questions
end
