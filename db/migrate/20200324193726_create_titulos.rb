class CreateTitulos < ActiveRecord::Migration[6.0]
  def change
    create_table :titulos do |t|
      t.integer :numero
      t.string :titulo
      t.references :parte, null: false, foreign_key: true

      t.timestamps
    end
  end
end
