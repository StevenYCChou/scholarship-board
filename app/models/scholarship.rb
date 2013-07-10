class Scholarship < ActiveRecord::Base
  attr_accessible :addr, :applicant, :attachment, :deadline, :desc1, :desc2, :link, :max, :name, :prize, :year
  serialize :attachment, Hash
  serialize :applicant, Array
  serialize :desc1, Array
  serialize :desc2, Array
end
