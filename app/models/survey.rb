class Survey < ActiveRecord::Base
  belongs_to :campaign
  has_many :questions
end
