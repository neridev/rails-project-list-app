class CreateHeads < ActiveRecord::Migration[7.1]
  def change
    create_table :heads do |t|
      t.string :name
      t.string :surname
      t.string :position
      t.boolean :techlead
      t.text :notes

      t.timestamps
    end
  end
end
