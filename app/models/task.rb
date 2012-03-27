class Task < ActiveRecord::Base
  validates :project, :presence => true
  validates :position, :presence => true
  validates :description, :presence => true
  
  belongs_to :project
  belongs_to :manager
end
