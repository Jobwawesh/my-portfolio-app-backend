puts "Seeding tables..."

4.times do
    skill = Skill.create(
        name: Faker::Hobby.activity.to_s
    )
end

puts "Done seeding"