class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :image_url
      t.integer :number

      t.timestamps null: false
    end
  end
end
