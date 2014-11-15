class TextStyle < ActiveRecord::Base
  validates :body, presence: true

  has_one :question, as: :style
  has_many :text_answers

  accepts_nested_attributes_for :text_answers

  def text_answer=(hash)
    puts "TRYING TO SET TEXT ANSWER OFF TEXT STYLE: #{hash.inspect}"
  end
end
