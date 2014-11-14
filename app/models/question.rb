class Question < ActiveRecord::Base
  validates :survey_id, presence: true

  belongs_to :style, polymorphic: true, dependent: :destroy
  belongs_to :survey
  has_many :responses
  has_many :answers, through: :responses, source: :answer, source_type:"TextAnswer"

  accepts_nested_attributes_for :answers, allow_destroy: true
end
