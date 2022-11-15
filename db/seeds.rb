puts "🌱 Seeding spices..."

50.times do
    House.create(
        name: Faker::Books::Lovecraft.deity,
        location: Faker::Books::Lovecraft.location,
        image_link: 'https://i.imgur.com/EMNcLjX.jpg'
    )
end

50.times do
    User.create(
        name: Faker::Name.name
    )
    rand(1..3).times do
        Review.create(
            text: Faker::Fantasy::Tolkien.poem,
            rating: '🎅' * rand(1..5),
            user_id: rand(1..50),
            house_id: rand(1..50)
        )
    end

end

puts "✅ Done seeding!"
