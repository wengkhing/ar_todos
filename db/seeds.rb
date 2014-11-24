require 'faker'
require_relative '../app/models/task'

10.times do
  Task.create(description: Faker::Lorem.sentence, complete: 0)
end