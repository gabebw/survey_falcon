class MultiChoiceStyle < ActiveRecord::Base
  validates :body, presence: true

  has_many :multi_choice_options
  has_one :question, as: :style

  accepts_nested_attributes_for :multi_choice_options
end
