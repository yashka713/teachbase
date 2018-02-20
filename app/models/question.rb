class Question < ApplicationRecord

  enum question_type: [:opened, :closed]

  has_many :answers, dependent: :destroy

  validates :title, presence: :true
  validates :body, presence: :true, length: { minimum: 10 }
end
