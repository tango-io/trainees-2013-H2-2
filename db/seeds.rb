
45.times do
  Project.create(
    :name => "My Pproject #{SecureRandom.hex(2)}",
    :autor => "Richard #{SecureRandom.hex(4)}",
    :description => "Lorem impsum #{SecureRandom.hex(12)}",
    :goal => SecureRandom.random_number(999)
  )
end
