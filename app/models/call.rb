class Call < ActiveRecord::Base
  belongs_to :jobs
  belongs_to :case
end
