class CreatePokemonEntries < ActiveRecord::Migration
  def change
    create_table :pokemon_entries do |t|
      t.string :name
      t.integer :pokedexNumber

      t.timestamps
    end
  end
end
