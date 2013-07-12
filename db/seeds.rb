    require_relative '../../config'

    20.times do
      Task.create :text => Faker::Lorem.setence(word_count = 10, supplemental = false)
    end
