json.array!(@heros) do |hero|
  json.extract! hero, :id, :name, :movespeed, :turnrate, :sightrange, :strength, :agility, :intelligence
  json.url hero_url(hero, format: :json)
end
