100.times do
  Job.create!(
    title: Faker::Job.title,
    salary: Faker::Number.number(digits: 6),
    company: Faker::Company.name,
    avatar: Faker::LoremFlickr.image(search_terms: ['job', 'it', 'recruiter']),
    rating: Faker::Number.decimal(l_digits: 2),
    skills: ['PHP','React','Html','Css','Redux','Typescript','Ruby','Mysql','Unix'].sample(5)
  )
end

100.times do
  Resume.create!(
    name: Faker::Name.name,
    level: ['Middle','Senior','Junior'].sample,
    avatar: Faker::Avatar.image,
    is_search_job: Faker::Boolean.boolean,
    tags: ['PHP','React','Html','Css','Redux','Typescript','Ruby','Mysql','Unix'].sample(4),
    experience: [1,2,3,4,5,6,7].sample,
    city: Faker::Address.city,
    country: Faker::Address.country
  )
end