# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
[
  {
    name: "Dark Lord",
    description: "the most powerful forces for dictatorship",
    power: 10
  },
  {
    name: "Necromancer",
    description: "Less powerful than Dark Lords but have there own power base",
    power: 8
  },
  {
    name: "Wizard",
    description: "Less powerful than lords",
    power: 6
  },
  {
    name: "Wraith",
    description: "Unquestioning servants of dark lords and dark wizards",
    power: 4
  },
  {
    name: "Human",
    description: "Ordinary people like you and me, not perfect, but not wraiths",
    power: 7 
  }
].each do |attrs|
  CharacterType.find_or_create_by!(name: attrs[:name]) do |ct|
    ct.description = attrs[:description]
    ct.power = attrs[:power]
  end
end