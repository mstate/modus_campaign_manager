class ChoicePosition < ActiveRecord::Base
  belongs_to :choice_set
  belongs_to :choice_position
  belongs_to :choice
end
