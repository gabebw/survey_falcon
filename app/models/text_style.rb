class TextStyle < ActiveRecord::Base
  validates :body, presence: true

  has_one :question, as: :style
  has_many :text_answers
end
