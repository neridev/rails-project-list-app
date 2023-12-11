class CreateHeadProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :head_projects do |t|
      t.references :head, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
