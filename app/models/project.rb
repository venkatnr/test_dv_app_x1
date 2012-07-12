class Project < ActiveRecord::Base
  has_many :iterations
  attr_accessible :description, :name
end
