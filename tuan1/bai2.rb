puts "Nhap canh thu nhat : "
a = gets.to_i
puts "Nhap canh thu hai : "
b = gets.to_i
puts "Nhap canh thu ba : "
c = gets.to_i

if a + b > c and a + c > b and b + c > a
    p = a + b + c
    hp = (a + b + c)/2
    s = Math.sqrt(hp*(hp-a)*(hp-b)*(hp-c))
    puts "Chu vi : #{p}"
    puts "Dien tich : #{s}"
else
    puts "#{a} , #{b} , #{c} khong phai canh cua tam giac"
end
