class ChoiceSet < ActiveRecord::Base
  belongs_to :question
  belongs_to :choice
  has_many :choice_positions
end
