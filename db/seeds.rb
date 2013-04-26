tags = ["Cats", "My Sad Life", "Things to think about", "World Destruction", "DevBootCamp"]
tags.each do |tag| Tag.create(tag_name: tag) end

50.times do
  
  title = Faker::Company.catch_phrase
  body = Faker::Lorem.paragraphs(rand(9))
  tag_name = tags.sample
  Post.create(title: title, body: body )
end

