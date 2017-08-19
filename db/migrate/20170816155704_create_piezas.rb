class CreatePiezas < ActiveRecord::Migration[5.1]
  def change
    create_table :piezas do |t|
      t.string :nombrepieza
      t.integer :numero
      t.integer :compra
      t.integer :venta

      t.timestamps
    end
  end
end
