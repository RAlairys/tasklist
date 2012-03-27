class Manager < ActiveRecord::Base
  validates :lastname, :presence => true
  
  has_many :projects
  has_many :tasks
end
