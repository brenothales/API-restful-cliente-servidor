class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t| 
      t.string :name_dog, limit: 80
      t.string :genero, limit: 80
      t.string :castrated, limit: 20
      t.date :date_of_birth
      t.string :status, null: true
      t.string :owners_name, limit: 80
      t.string :phone
      t.date :last_visit
      t.references :breed, foreign_key: true

      t.timestamps
    end
  end
end
