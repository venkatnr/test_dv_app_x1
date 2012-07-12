class AddEndDateToIterations < ActiveRecord::Migration
  def change
    add_column :iterations, :end_date, :date
  end
end
