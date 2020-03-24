class CreatePartes < ActiveRecord::Migration[6.0]
  def change
    create_table :partes do |t|
      t.integer :numero
      t.string :titulo

      t.timestamps
    end
  end
end
