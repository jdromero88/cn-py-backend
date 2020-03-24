class CreateArticulos < ActiveRecord::Migration[6.0]
  def change
    create_table :articulos do |t|
      t.integer :numero
      t.string :titulo
      t.text :texto
      t.references :seccion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
