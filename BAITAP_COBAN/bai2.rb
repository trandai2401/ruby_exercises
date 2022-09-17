a,b,c = 0
puts  Math.sqrt(2)
def method_name (name)
  print "Type #{name} : "
  return gets.chomp.to_i
end

def is_triangle (a,b,c)
  if a + b > c &&  a+c > b && b+c>a 
    return true
  end
  return false
end

def cal_P(a,b,c)
  return a+b+c;
end

def cal_S(a,b,c)
  p =( cal_P a,b,c ) / 2.0

  return Math.sqrt(p * (p- a) * (p-  b) * ( p  - c))
end

a = method_name "A"
b = method_name "B"
c = method_name "C"


print (( is_triangle a, b, c ) ? "Là 1 tam giác " : "Khum phải 1 tam giác \n")
if is_triangle a, b, c 
  puts "Chu vi : #{cal_P a,b,c}" 
  puts "Diện tích  #{cal_S a,b,c}"
end
