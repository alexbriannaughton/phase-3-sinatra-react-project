puts "🌱 Seeding spices..."

def random_link
    houses = [
        'https://i.imgur.com/EMNcLjX.jpg',
        'https://i.imgur.com/N8mahSF.jpg',
        'https://i.imgur.com/TauLMLD.jpg',
        'https://i.imgur.com/GguqP7i.jpg',
        'https://i.imgur.com/Xtwl6pY.jpg',
        'https://i.imgur.com/lA3yJX3.jpg',
        'https://i.imgur.com/FD2J3rx.jpg',
        'https://i.imgur.com/5Yidj9e.jpg',
        'https://i.imgur.com/qUYoN6j.jpg',
        'https://i.imgur.com/BTu1FB1.jpg',
        
    ]
    houses.sample
end

def random_house_name
    name = ["House", "Manor", "Home", "Place", "Palace", "Spot"]
    name.sample
end

50.times do
    House.create(
        name: "#{Faker::Books::Lovecraft.deity} #{random_house_name}",
        location: "#{Faker::Address.city}, #{Faker::Address.state}",
        image_link: random_link
    )
end

50.times do
    User.create(
        name: Faker::Name.name,
        username: Faker::Name.unique.middle_name
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
