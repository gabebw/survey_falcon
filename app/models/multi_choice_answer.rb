class MultiChoiceAnswer < ActiveRecord::Base
  validates :multi_choice_option_id, presence: true

  belongs_to :multi_choice_option
  has_one :response, as: :answer
end
