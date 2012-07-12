class AddStartdateToIterations < ActiveRecord::Migration
  def change
    add_column :iterations, :start_date, :date
  end
end
