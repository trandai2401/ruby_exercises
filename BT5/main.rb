class CanBo
  attr_reader  :ten, :tuoi, :gioiTinh, :diaChi

  def initialize(ten, tuoi,gioiTinh, diaChi)
    @ten = ten
    @tuoi = tuoi
    @gioiTinh =gioiTinh
    @diaChi = diaChi    
  end


  def show
    return "#{@ten} #{@tuoi} #{@gioiTinh} #{@diaChi}"
  end

  
end

class CongNhan < CanBo
  attr_accessor :bac
  def initialize (bac)
    @bac = bac
  end
end

class  KySu < CanBo
  attr_accessor :nganhDaoTao
  def initialize(nganhDaoTao)
    @nganhDaoTao = nganhDaoTao
    
  end
end

class NhanVien  < CanBo
  attr_accessor :congViec
  def initialize(congViec)
    @congViec =congViec
  end
end






$canBos207 = []

def showAll 
  $canBos207.each do |i|
    puts i.show()
end

end

def themCanBo(canBo)
  $canBos207.append(canBo)
end

def timKim(name)
  return $canBos207.select {|i| i.ten === name}
end

def menu()
  puts ""
  puts "1. Hien thi danh sach"
  puts "2. Tim kiem"
  puts "3. Them can bo"
  puts "4. Thoat"

end
canbo1207 = CanBo.new("Phu", 18,"Nữ", "BV Bạch Mai")
canbo2207 = CanBo.new("Phu", 19,"Nam", "BV Ung Bứu")

$canBos207.append(canbo1207)
$canBos207.append(canbo2207)


$choose207 = 0

while $choose207 >= 0 && $choose207 <4
  menu()
  $choose207 = 5
  print "Chon : "
  $choose207 = gets.chomp.to_i

  case $choose207
  when 1
    showAll()
  when 2
    print "nhap  ten :"
    name207 = gets.chomp
    result207 =  timKim(name207)
    result207.each do |i|
      puts i.show()
    end
  when 3
    print "ten : "
    ten207 = gets.chomp
    print "tuoi : "
    tuoi207 = gets.chomp
    
    print "gioi tinh : "
    gioiTinh207 = gets.chomp

    print "dia chi : "
    diaChi207 = gets.chomp
    
    canbo1207 = CanBo.new(ten207, tuoi207,gioiTinh207, diaChi207)
    themCanBo(canbo1207)
    puts "da them"
  when 71..100
    "The tank is almost full."
  else
    $choose207 =4
  end


end







