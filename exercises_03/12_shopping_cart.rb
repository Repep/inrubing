puts "Сейчас Врубель сымититует корзину покупок на сайте. Для окончания ввода и вывода расчетов введите СТОП в качестве названия товара."
goods = []
q = []
price = []
sum = []
n = 1
loop do
puts "Введите название товара №#{n}"
good = gets.chomp
break if good == 'стоп' || good == 'СТОП' || good == 'stop' || good == 'STOP'
goods << good
puts "Введите количество"
a = gets.chomp.to_f
q << a
puts "Введите цену за единицу"
b = gets.chomp.to_f
price << b
sum << a * b

n += 1
end

q_price = Hash[q.zip(price)]
sum_cart = sum.inject(:+)

puts "Массив с исходными данными: #{Hash[goods.zip(q_price)]}"
puts "Массив с суммами за каждый товар: #{Hash[goods.zip(sum)]}"
puts "Сумма всей корзины: #{sum_cart}"
