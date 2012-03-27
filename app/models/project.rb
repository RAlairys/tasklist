class Project < ActiveRecord::Base
  validates :name, :presence => true
  
  belongs_to :manager
  
  has_many :tasks
end
