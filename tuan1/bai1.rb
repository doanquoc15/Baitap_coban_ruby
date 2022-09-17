puts "Nhap so luong phan tu mang"
n = gets.to_i
arr = []

for i in (0..n-1) do
    puts "Nhap phan tu thu #{i+1} :"
    arr[i] = gets.to_i
end

puts "Phan tu nho nhat : #{arr.min}"
puts "Phan tu lon nhat : #{arr.max}"
puts "Trung binh cac so : #{arr.sum/n}"