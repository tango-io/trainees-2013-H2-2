# This file should contain all the record creation needed to seed the database with its default values.
#
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'securerandom'

45.times do
  Project.create(
    :name => "My Pproject #{SecureRandom.hex(2)}",
    :autor => "Richard #{SecureRandom.hex(4)}",
    :description => "Lorem impsum #{SecureRandom.hex(12)}",
    :goal => SecureRandom.random_number(9)
  )
end
