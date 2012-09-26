class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.text :cuerpo
      t.references :task

      t.timestamps
    end
    add_index :comentarios, :task_id
  end
end
