class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :ttype
      t.string :disposition
      t.string :acceptor
      t.float :estimated_hours
      t.text :description
      t.references :userst

      t.timestamps
    end
    add_index :tasks, :userst_id
  end
end
