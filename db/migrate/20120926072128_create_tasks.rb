class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :tipo
      t.string :nombre
      t.text :descripcion
      t.boolean :estado

      t.timestamps
    end
  end
end
