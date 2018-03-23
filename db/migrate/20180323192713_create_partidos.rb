class CreatePartidos < ActiveRecord::Migration[5.0]
  def change
    create_table :partidos do |t|
      t.integer :fase
      t.date :fecha
      t.references :local
      t.references :visita

      t.timestamps
    end

    add_foreign_key :partidos, :equipos, column: :local_id, primary_key: :id
    add_foreign_key :partidos, :equipos, column: :visita_id, primary_key: :id

  end
end
