class Question < ApplicationRecord
  belongs_to :quiz
  has_many :answers, dependent: :destroy

  # validates :answers, length: { is: 4 }
end
