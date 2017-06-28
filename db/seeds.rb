Work.destroy_all

10.times do |index|
  Work.create!(artist: Faker::Friends.character,
              location: Faker::Friends.location,
              created_at: Faker::Time.between(DateTime.now - 2, DateTime.now),
              link: Faker::Company.logo)
end

p "#{Work.count} characters"
