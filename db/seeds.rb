# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# student
100.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = "#{first_name}.#{last_name}@email.com"
  phone_number = Faker::PhoneNumber.cell_phone
  short_bio = Faker::Hipster.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4)
  linkedin_url = Faker::Internet.url
  twitter_handle = Faker::Internet.url(host: 'twitter.com')
  personal_site_url = Faker::Internet.url
  online_resume_url = Faker::Internet.url
  github_url = Faker::Internet.url(host: 'github.com')
  photo_url = Faker::Avatar.image
  password = "password"

  student = Student.create!(
    first_name: first_name,
    last_name: last_name,
    email: email,
    phone_number: phone_number,
    short_bio: short_bio,
    linkedin_url: linkedin_url,
    twitter_handle: twitter_handle,
    personal_site_url: personal_site_url,
    online_resume_url: online_resume_url,
    github_url: github_url,
    photo_url: photo_url,
    password: password
  )
end

#experiences

400.times do
  start_date = Faker::Date.between_except(from: 3.year.ago, to: 2.year.from_now, excepted: Date.today)
  end_date = Faker::Date.between_except(from: 2.year.ago, to: 1.year.from_now, excepted: Date.today)
  job_title = Faker::Job.title
  company = Faker::Company.name
  details = Faker::Quote.famous_last_words
  student_id = Faker::Number.between(from: 1, to: 100)

  experience = Experience.create!(
   start_date: start_date,
   end_date: end_date,
   job_title: job_title,
   company: company,
   details: details,
   student_id: student_id
  )
end


#skills
200.times do
  name = Faker::Job.key_skill

  skill = Skill.create!(
    name: name
  )
end


#student_skills
1000.times do
  student_id = Faker::Number.between(from: 1, to: 100)
  skill_id = Faker::Number.between(from: 1, to: 200)

  student_skills = StudentSkill.create!(
    student_id: student_id,
    skill_id: skill_id
  )
end

# educations 
200.times do
  start_date = Faker::Date.between_except(from: 4.year.ago, to: 3.year.from_now, excepted: Date.today)
  end_date = Faker::Date.between_except(from: 3.year.ago, to: 2.year.from_now, excepted: Date.today)
  degree = Faker::Educator.subject
  university = Faker::University.name
  details = Faker::Movies::Lebowski.quote
  student_id = Faker::Number.between(from: 1, to: 100)

  education = Education.create!(
    start_date: start_date,
    end_date: end_date,
    degree: degree,
    university: university,
    details: details,
    student_id: student_id
  )
end


# capstone
200.times do
  name = Faker::Esport.player
  description = Faker::ChuckNorris.fact
  url = Faker::Internet.url
  screenshot_url = Faker::Internet.url
  student_id = Faker::Number.between(from: 1, to: 100)

  casptone = Capstone.create!(
    name: name,
    description: description,
    url: url,
    screenshot_url: screenshot_url,
    student_id: student_id
  )
end
