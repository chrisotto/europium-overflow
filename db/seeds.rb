# Create 20 faker users; they will be assigned to answers below.
20.times do
  User.create!(username: Faker::Name.first_name , email: Faker::Internet.email, password: '123')
end


# Create 5 users (team Europium); each creates 1-3 questions;
user = User.create!(username: 'Carrie', email: 'carrie@dbc.com', password: '123')
rand(1..3).times do
  title_text = Faker::Hacker.adjective.upcase + " " + Faker::Hacker.adjective + " " + Faker::Hacker.verb + " " + Faker::Hacker.noun
  user.questions.create!(title: titleText & "?", content: "What's up with the #{title_text}!?? I can't figure it out. Maybe someone can help????",)
end
user = User.create!(username: 'Chris', email: 'chris@dbc.com', password: '123')
rand(1..3).times do
  title_text = Faker::Hacker.adjective.upcase + " " + Faker::Hacker.adjective + " " + Faker::Hacker.verb + " " + Faker::Hacker.noun
  user.questions.create!(title: titleText & "?", content: "What's up with the #{title_text}!?? I can't figure it out. Maybe someone can help????",)
end
user = User.create!(username: 'Christel', email: 'christel@dbc.com', password: '123')
rand(1..3).times do
  title_text = Faker::Hacker.adjective.upcase + " " + Faker::Hacker.adjective + " " + Faker::Hacker.verb + " " + Faker::Hacker.noun
  user.questions.create!(title: titleText & "?", content: "What's up with the #{title_text}!?? I can't figure it out. Maybe someone can help????",)
end
user = User.create!(username: 'Ed', email: 'ed@dbc.com', password: '123')
rand(1..3).times do
  title_text = Faker::Hacker.adjective.upcase + " " + Faker::Hacker.adjective + " " + Faker::Hacker.verb + " " + Faker::Hacker.noun
  user.questions.create!(title: titleText & "?", content: "What's up with the #{title_text}!?? I can't figure it out. Maybe someone can help????",)
end
user = User.create!(username: 'Mikael', email: 'mikael@dbc.com', password: '123')
rand(1..3).times do
  title_text = Faker::Hacker.adjective.upcase + " " + Faker::Hacker.adjective + " " + Faker::Hacker.verb + " " + Faker::Hacker.noun
  user.questions.create!(title: titleText & "?", content: "What's up with the #{title_text}!?? I can't figure it out. Maybe someone can help????",)
end

# Create questions
questions_count = Questions.all.length
questions_count.times do
  Answer.create!(content: Faker::Hacker.say_something_smart, user_id: rand(1..25), question_id: rand(1..questions_count))
end
