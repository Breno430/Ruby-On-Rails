class CreateDepartamento1s < ActiveRecord::Migration[6.1]
  def change
    create_table :departamento1s do |t|
      t.string :nome

      t.timestamps
    end
  end
end
