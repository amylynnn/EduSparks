class UserAnswer < ApplicationRecord
  belongs_to :answer
  belongs_to :user
  belongs_to :result
  belongs_to :question
end
