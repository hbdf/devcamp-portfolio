# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end

puts "3 topics inserted"

10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "asdkfasçlkfjçalkkjfçlkajsdflçkasjdfçlkkjad
        asdfdljasçdfkjasfd
        asdçfljaslçkfdjçasdkfjçalsdkjfçlasjfçlaksjfçlj",
        topic_id: Topic.last.id
    )
end

puts "blogs posts OK"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end

puts "skills OOK"

9.times do |portfolio|
    Portfolio.create!(
        title: "Title #{portfolio}",
        subtitle: "Ruby on Rails",
        body: "lkajdflkajfdjlj",
        main_image: "https://placehold.it/600x400",
        thumb_image: "https://placehold.it/300x200"
    )
end

1.times do |portfolio|
    Portfolio.create!(
        title: "Title #{portfolio}",
        subtitle: "Angular",
        body: "lkajdflkajfdjlj",
        main_image: "https://placehold.it/600x400",
        thumb_image: "https://placehold.it/300x200"
    )
end
