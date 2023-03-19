class Elect < ApplicationRecord
  belongs_to :elector_user, class_name: 'User'
  belongs_to :elected_user, class_name: 'User'
  belongs_to :question
end
