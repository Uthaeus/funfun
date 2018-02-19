User.create!(email: 'test@test.com', name: 'HomerJ', password: 'asdfasdf', password_confirmation: 'asdfasdf', phone_number: '3852090393', roles: 'admin')

puts "1 user created"


5.times do |problem|
  Problem.create!(
    title: "Awesome Problem #{problem}",
    description: "Something to chew on...",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  )
end

puts "5 problems created"



