# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Entertainment.destroy_all
Location.destroy_all
GraveGang.destroy_all
Member.destroy_all
Theme.destroy_all

Entertainment.create(
    title: "karaoke",
    description: "Keep the party going with a karaoke machine filled with your gang's favorite songs"
)

Entertainment.create(
    title: "open bar",
    description: "Keep the party going with a staffed open bar that can only be accessed by those on your gang's custom guest list"
)

Entertainment.create(
    title: "gaming",
    description: "Keep the party going with PCs, consoles, and handheld devices"
)

Entertainment.create(
    title: "sports",
    description: "Keep the party going with your choice of live or pre-recorded sporting events"
    )
    
Entertainment.create(
        title: "rockin",
        description: "Keep the party going with a custom jam space to keep rockin in the afterlife"
    )

Location.create!(
        name: "Plot 1"
    )

Location.create!(
        name: "Plot 2"
    )

Location.create!(
        name: "Plot 3"
    )

    Location.create!(
        name: "Plot 4"
    )

    Location.create!(
        name: "Plot 5"
    )

    Location.create!(
        name: "Plot 6"
    )

    Location.create!(
        name: "Plot 7"
    )

    Location.create!(
        name: "Plot 8"
    )

    Location.create!(
        name: "Plot 9"
    )

    Location.create!(
        name: "Plot 10"
    )

    Location.create!(
        name: "Plot 11"
    )

    Location.create!(
        name: "Plot 12"
    )

    Location.create!(
        name: "Plot 13"
    )

    Location.create!(
        name: "Plot 14"
    )

    Location.create!(
        name: "Plot 15"
    )

    Location.create!(
        name: "Plot 16"
    )

    Location.create!(
        name: "Plot 17"
    )

    Location.create!(
        name: "Plot 18"
    )

    Location.create!(
        name: "Plot 19"
    )

    Location.create!(
        name: "Plot 20"
    )

    Location.create!(
        name: "Plot 21"
    )

    Location.create!(
        name: "Plot 22"
    )
    Location.create!(
        name: "Plot 23"
    )
    Location.create!(
        name: "Plot 24"
    )
    Location.create!(
        name: "Plot 25"
    )
    Location.create!(
        name: "Plot 26"
    )
    Location.create!(
        name: "Plot 27"
    )
    Location.create!(
        name: "Plot 28"
    )
    Location.create!(
        name: "Plot 29"
    )
    Location.create!(
        name: "Plot 30"
    )
    
GraveGang.create(
    name: "Bones Brigade",
    location: Location.all.first 
)
            
GraveGang.create(
    name: "Smash Mouths",
    location: Location.all.second
)

GraveGang.create(
    name: "Cool Freaks",
    location: Location.all.third
)

GraveGang.create(
    name: "Helpful Friends",
    location: Location.all.fourth 
)

GraveGang.create(
    name: "Former Teens",
    location: Location.all.fifth 
)

10.times do
    Theme.create(
        title: Faker::Sports::Basketball.team,
        description: "Cheer on your favorite team for all of eternity"
    )
end

10.times do
    Theme.create(
        title: Faker::Music.band,
        description: "Keep rockin with your favorite band, forever"
    )
end

10.times do
    Theme.create(
        title: Faker::Game.title,
        description: "Keep on gaming in an epic way with your 'squad'"
    )
end

50.times do
    Member.create!(
        username: Faker::Internet.username,
        full_name: Faker::Name.name,
        birth_date: Faker::Date.birthday,
        death_date: Faker::Date.forward,
        grave_gang: GraveGang.all.sample,
        theme: Theme.all.sample,
        password: Faker::Internet.password
    )
end
