class CreateUsersts < ActiveRecord::Migration
  def change
    create_table :usersts do |t|
      t.string :name
      t.string :disposition
      t.string :customer
      t.string :tracker
      t.string :status
      t.integer :priority
      t.integer :order
      t.float :estimated_hours
      t.string :description
      t.references :iteration

      t.timestamps
    end
    add_index :usersts, :iteration_id
  end
end
