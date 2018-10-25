# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

10.times do |index|
	assembly = Assembly.create!(name:"assembly#{index}")
end

10.times do |index|
	part = Part.create!(part_number:"part_number#{index}")
end

20.times do |index|
	part = AssembliesAndParts.create!(assembly_id: rand(1...10), part_id:rand(1...10))
end