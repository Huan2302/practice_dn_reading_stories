r = Random.new
category = ["Action", "Adventure", "Comedy", "Demons", "Doujinshi", "Drama", "Ecchi", "Fantasy",
     "Food", "Gender Bender", "Harem", "Historical", "Horror", "Isekai", "Josei", "Kids",
     "Magic", "Mecha", "Music", "Mystery", "One Shot", "Parody", "School Life", "Shoujo",
     "Shounen", "Space", "Sports", "Super Power", "Vampire", "Yaoi", "Yuri"]
category.each do |i|
    Category.create(category_name: i)
end

User.create!(username: "Example User",
             email: "example@railstutorial.org",
             role: 1,
             sex: true,
             )
49.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  User.create!(username: name,
  email: email,
  role: 0,
  sex: true
  )
end

10.times do |n|
  name = Faker::Name.name
  email = "example-#{n+51}@railstutorial.org"
  User.create!(username: name,
  email: email,
  role: 2,
  sex: true
  )
end
100.times do |n|
  ui = r.rand(50..60)
  category_id = r.rand(1..category.count)
  views = r.rand(10000..90000)
  s = Story.new

  s.story_name = Faker::TvShows::Buffy.episode 

  s.user_id = ui
  s.author = Faker::Name.name
  s.free = true
  s.price = 0

  s.img = "/assets/(#{n+1}).jpg"
  s.category_id = category_id
  s.views = views
  s.introduction = Faker::TvShows::Buffy.episode

  s.save
end

30.times do |n|
  ui = r.rand(50..60)
  category_id = r.rand(1..category.count)
  views = r.rand(10000..90000)
  s = Story.new

  s.story_name = Faker::TvShows::Buffy.episode 

  s.user_id = ui
  s.author = Faker::Name.name
  s.free = false
  s.price = 2000

  s.img = "/assets/(#{n+1}).jpg"
  s.category_id = category_id
  s.views = views
  s.introduction = Faker::TvShows::Buffy.episode

  s.save
end

Story.all.each do |i|
  num = 1

  100.times do |n|
      c = Chapter.new
      content = ""
      30.times do |j|
          content += Faker::Quotes::Shakespeare.romeo_and_juliet_quote
          content += Faker::Quotes::Shakespeare.king_richard_iii_quote

      end
      c.chapter_number = num
      c.chapter_name = Faker::TvShows::Simpsons.location
      c.story_id = i.id
      c.content = content
      c.save
      num = num+1
  end
end


500.times do |i|
  c = Action.new
  c.user_id = r.rand(1..User.count)
  c.story_id = r.rand(1..Story.count)
  c.type = 0
  c.rating_number = r.rand(1..5)
  c.save
end
