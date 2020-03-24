class CreateCapitulos < ActiveRecord::Migration[6.0]
  def change
    create_table :capitulos do |t|
      t.integer :numero
      t.string :numero_romano
      t.string :titulo
      t.references :titulo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
