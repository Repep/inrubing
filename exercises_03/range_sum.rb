#расчет суммы чисел через прямой метод

puts "Ведите последнее число Вашего интервала"
num_direct = gets.chomp.to_i
range = (1..num_direct)
sum_direct = range.inject(:+).to_f
ave_direct = (sum_direct / range.size).to_f
puts "Метод INJECT. Сумма всех чисел Вашего диапозона равна #{sum_direct}"
puts "Среднее арифметическое в вашем диапозоне равен #{ave_direct.to_f}"

#расчет суммы чисел через цикл each
puts "Ведите последнее число Вашего интервала"
num_each = gets.chomp.to_i
range_each = (1..num_each)
array_each = range.to_a
sum_each = 0
array_each.each do |i|
  sum_each += i
end
puts "Метод EACH.Сумма всех чисел Вашего диапозона равна #{sum_each}"

#расчет суммы чисел через цикл for
puts "Ведите последнее число Вашего интервала"
num_for = gets.chomp.to_i
sum_for = 0
for i in (1..num_for)
  sum_for += i
end
puts "Метод FOR. Сумма всех чисел Вашего диапозона равна #{sum_for}"


#расчет суммы чисел через цикл while
puts "Ведите последнее число Вашего интервала"
num_while = gets.chomp.to_i
i = 1
sum_while = 0
while i <= num_while do
  sum_while += i
  i += 1
end
puts "Метод WHILE. Сумма всех чисел Вашего диапозона равна #{sum_while}"


#расчет суммы чисел через цикл until
puts "Ведите последнее число Вашего интервала"
num_until = gets.chomp.to_i
i = 1
sum_until = 0
until i > num_until do
  sum_until += i
  i += 1
end
puts "Метод UNTIL.Сумма всех чисел Вашего диапозона равна #{sum_until}"
