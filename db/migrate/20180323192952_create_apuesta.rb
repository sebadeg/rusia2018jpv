class CreateApuesta < ActiveRecord::Migration[5.0]
  def change
    create_table :apuesta do |t|
      t.belongs_to :admin_user, foreign_key: true
      t.belongs_to :partido, foreign_key: true
      t.integer :local
      t.integer :visita

      t.timestamps
    end
  end
end
