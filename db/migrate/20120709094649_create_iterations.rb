class CreateIterations < ActiveRecord::Migration
  def change
    create_table :iterations do |t|
      t.string :name
      t.string :description
      t.references :project

      t.timestamps
    end
    add_index :iterations, :project_id
  end
end
