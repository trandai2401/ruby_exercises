require_relative 'man.rb'



class Student < Human
  attr_accessor :grade1, :grade2, :grade3
  def initialize(grade1, grade2, grade3,name, hair, weight, height, age, phone, email, nation)
                               
    @grade1 = grade1
    @grade2 = grade2
    @grade3 = grade3
    super(name, hair, weight, height, age, phone, email, nation)

  end
  
  def average_grade 
    return (1.0*@grade1 + @grade2+ @grade3)/3
  end

  def to_s
    return "#{@name} #{@hair} #{@weight} #{@height} #{@age} #{@phone} #{@email} #{@nation} #{@grade1} #{@grade2} #{@grade3} "
  end
end



arr = [Student.new(10,5,8,"Hoa","Đen",150,70,18,"0123456789","hoa@1234","Kinh"),
        Student.new(7,5,8,"Hoa","male",150,70,18,"0123456789","hoa@1234","Kinh"),
        Student.new(10,5,7,"Hoa","male",150,70,18,"0123456789","hoa@1234","Kinh"),
        Student.new(10,9,8,"Hoa","male",150,70,18,"0123456789","hoa@1234","Kinh"),
]

puts "Danh sách chưa sắp xếp : \n",arr,"\n"


arr_sorted = arr.sort_by { |item| -item.average_grade() }
puts "Danh sách đã sắp xếp : \n",arr_sorted




