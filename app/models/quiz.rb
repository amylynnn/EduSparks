class Quiz < ApplicationRecord
  belongs_to :subject
  has_many :questions
  has_many :results, dependent: :destroy
end
