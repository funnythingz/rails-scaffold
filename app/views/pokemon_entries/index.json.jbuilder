json.array!(@pokemon_entries) do |pokemon_entry|
  json.extract! pokemon_entry, :name, :pokedexNumber
  json.url pokemon_entry_url(pokemon_entry, format: :json)
end