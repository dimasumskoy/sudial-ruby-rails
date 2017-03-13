# Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя). Найти порядковый номер даты, начиная отсчет с начала года.

puts "Число?"
day   = gets.to_i

puts "Месяц (числом)?"
month = gets.to_i

puts "Год?"
year  = gets.to_i

months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

if year % 4 == 0 || year % 400 == 0
  months[1] = 29
  puts "Високосный год"
end

result = months[0..(month-1)].inject(:+) - months[month-1] - day

puts "Порядковый номер введенной даты от начала года: #{result}"