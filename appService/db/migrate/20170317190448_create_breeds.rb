class CreateBreeds < ActiveRecord::Migration[5.0]
  def change
    create_table :breeds do |t|
      t.string :name, limit: 80

      t.timestamps
    end
  end
end
