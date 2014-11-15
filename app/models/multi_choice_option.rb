class MultiChoiceOption < ActiveRecord::Base
  validates :body, presence: true

  has_many :multi_choice_answers

  accepts_nested_attributes_for :multi_choice_answers
end
