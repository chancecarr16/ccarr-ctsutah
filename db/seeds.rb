User.create!(
  email: "bboi@boi.com",
  password: "boiboi",
  password_confirmation: "boiboi",
  name: "Boi",
  roles: "site_admin"
)

puts "1 Admin user created"

User.create!(
  email: "user@user.com",
  password: "useruser",
  password_confirmation: "useruser",
  name: "Normie User",
  roles: "user"
)

puts "Normie user created"

User.create!(
  email: "test@test.com",
  password: "testtest",
  password_confirmation: "testtest",
  name: "Test Admin User",
  roles: "site_admin"
)

puts "Second (More professional) Admin user created"

3.times do |topic|
    Topic.create!(
      title: "Topic #(topic)"
      )
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Etiam rhoncus mi efficitur ex tempor finibus. Nunc interdum ornare lorem, non posuere lorem efficitur eget. Suspendisse sit amet lorem diam. In mollis lacus quis purus vehicula lobortis. Quisque pulvinar porttitor lacinia. Cras nec ante id urna ultricies porta. Phasellus sodales sagittis turpis, non efficitur velit sollicitudin sit amet. In hac habitasse platea dictumst.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Angular",
    body: "Etiam rhoncus mi efficitur ex tempor finibus. Nunc interdum ornare lorem, non posuere lorem efficitur eget. Suspendisse sit amet lorem diam. In mollis lacus quis purus vehicula lobortis. Quisque pulvinar porttitor lacinia. Cras nec ante id urna ultricies porta. Phasellus sodales sagittis turpis, non efficitur velit sollicitudin sit amet. In hac habitasse platea dictumst.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(name: "Technology #{technology}")
end

puts "3 technologies created"