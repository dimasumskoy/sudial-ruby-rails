# Заполнить массив числами от 10 до 100 с шагом 5

p array = (10..100).to_a.delete_if { |i| i % 5 != 0 }