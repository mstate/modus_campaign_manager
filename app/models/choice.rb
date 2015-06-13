class Choice < ActiveRecord::Base
  belongs_to :question
  belongs_to :choice_set
  has_many :choice_positions
end
