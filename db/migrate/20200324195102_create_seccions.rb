class CreateSeccions < ActiveRecord::Migration[6.0]
  def change
    create_table :seccions do |t|
      t.integer :numero
      t.string :titulo
      t.references :capitulo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
