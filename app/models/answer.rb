class Answer < ApplicationRecord
  belongs_to :question

  validates :correct, inclusion: { in: [true, false] }
end
