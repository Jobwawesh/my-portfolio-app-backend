puts "Seeding tables..."

17.times do

    user = User.create(
        "name": Faker::Name.name,
        "email": Faker::Internet.email,
        "password_hash": Faker::Alphanumeric.alphanumeric(number: 10),
     
    )
    rand(1..6).times do
        Project.create(
        "title": Faker::PhoneNumber.cell_phone ,
        "description": Faker::Lorem.sentence,
        "user_id": user.id,
        "status": rand(0..3)
    )
    end

    rand(1..5).times do
        Skill.create(
            "name": Faker::Job.key_skill, 
            "user_id": user.id
        )
    end
end

puts "Done seeding"