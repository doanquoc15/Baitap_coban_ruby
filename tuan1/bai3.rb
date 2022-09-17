
while true
    puts "Nhap vao ten cua ban :"
    name = gets.to_s
    break if name.length > 1
end
puts "Ten cua ban : #{name}"