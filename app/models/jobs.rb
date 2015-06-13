class Jobs < ActiveRecord::Base
  belongs_to :surveyor
  has_many :calls
end
