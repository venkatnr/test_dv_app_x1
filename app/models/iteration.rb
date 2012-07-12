class Iteration < ActiveRecord::Base
  belongs_to :project
  attr_accessible :description, :name, :start_date, :end_date
  has_many :usersts 
end
