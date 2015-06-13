class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :choice_sets
end
