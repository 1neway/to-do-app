    require_relative '../config/application'

    20.times do
      Task.create :text => Faker::Lorem.sentence(word_count = 10, supplemental = false), :is_complete => 0
    end
