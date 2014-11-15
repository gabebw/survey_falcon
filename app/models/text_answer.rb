class TextAnswer < ActiveRecord::Base
  validates :body, presence: true

  belongs_to :text_style
  has_one :response, as: :answer
end
