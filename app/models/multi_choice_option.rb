class MultiChoiceOption < ActiveRecord::Base
  validates :body, presence: true

  has_many :multi_choice_answers

  accepts_nested_attributes_for :multi_choice_answers

  def multi_choice_answer=(hash)
    # Originally thought it would be off of style
    puts "TRYING TO SET MULTI CHOICE ANSWER OFF OF OPTION: #{hash.inspect}"
  end
end
