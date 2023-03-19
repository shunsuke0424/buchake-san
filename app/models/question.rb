class Question < ApplicationRecord
  belongs_to :group
  has_many :elects
  validates :group_id, presence: true
end
