print "Enter a num1: "
num1 = gets.chomp.to_i

print "Enter a num2 "
num2 = gets.chomp.to_i


puts "Số lớn hơn là  #{ (num1 > num2 ? num1 : num2 )   }"