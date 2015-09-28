puts "Сколько студентов в Вашей группе?"
students = gets.chomp.to_i
if
	students < 1
	puts "В группе на удивление мало студентов..."
else
	


s_array = (1..students)
grades = []
i = 1
while i <= students do
	puts "Введите оценку студента №#{i}"
	grades << gets.chomp.to_i
	i += 1
end

total_grade = 0
grades.each do |a|
  total_grade += a
end

puts "Средняя оценка учеников в группе равна #{total_grade / students}"

end