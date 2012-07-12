class Task < ActiveRecord::Base
  belongs_to :userst
  attr_accessible :acceptor, :description, :disposition, :estimated_hours, :name, :ttype

end
