print "Enter a length: "
length = gets.chomp.to_i


arr = Array.new(length)

for i in 0..(length-1)
  print "Type number #{i} : "
  arr[i] = gets.chomp.to_i
end


puts arr.max
puts arr.min

puts arr.sum/arr.length
