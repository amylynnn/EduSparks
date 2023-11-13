class AnsweredQuestion < ApplicationRecord
  belongs_to :result
  belongs_to :user
  belongs_to :user_answer
end
