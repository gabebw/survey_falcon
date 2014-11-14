class Survey < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true

  belongs_to :user
  has_many :questions, dependent: :destroy
  accepts_nested_attributes_for :questions, allow_destroy: true
end
