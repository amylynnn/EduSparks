class Answer < ApplicationRecord
  belongs_to :question
  has_many :user_answers, dependent: :destroy
  validates :correct, inclusion: { in: [true, false] }
end
