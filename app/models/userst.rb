class Userst < ActiveRecord::Base
  belongs_to :iteration
  has_many :tasks
  attr_accessible :customer, :description, :disposition, :estimated_hours, :name, :order, :priority, :status, :tracker
end
