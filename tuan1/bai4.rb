a = []
3.times {|i|
    puts "Nhap vao so thu #{i + 1}: "
    a[i] = gets.to_i
}
puts "Tang dan: #{a.sort}"
puts "Giam dan: #{a.sort.reverse}"