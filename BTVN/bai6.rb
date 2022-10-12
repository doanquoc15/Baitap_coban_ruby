class Student
    attr_accessor :name, :age, :address
    def initialize(name,age,address)
        @name = name
        @age = age
        @address = address
    end

    def input 
        puts "Nhap ten:"
        @name = gets.to_s
        puts "Nhap tuoi:"
        @age = gets.to_i
        puts "Nhap dia chi:"
        @address = gets.to_s
    end

    def display
        puts "Hien ten: #{@name}"
        puts "Hien tuoi: #{@age}"
        puts "Hien dia chi: #{@address}"
    end
end


class School < Student
    def initialize
        @students = []
    end

    def add(student)
        @students.push(student)
    end

    def display
        @students.each{|item| puts item.display}
    end


    def display20
        result = @students.select{|item| item.age == 20}
        result.each{|std| puts std.display}
    end

    def display23vsDN
        count = 0
        @students.each do |item|
            if item.age == 23 && item.address == "DN"
                count+=1;
            end     
        end   
        return count
    end
end

school = School.new
while true
    puts "---Cac chuc nang chinh---"
    puts "Chon 1: Them moi hoc sinh"
    puts "Chon 2: Hien thi hoc sinh 20 tuoi: "
    puts "Chon 3:Dem so luong 23 tuoi o DN"
    puts "Chon 4: Thoat chuong trinh"
    print "Chon cong viec can thuc hien: "b8
    value  = gets.to_i
    case value
        when 1
            puts"Nhap ten"
            name = gets.chomp
            puts"Nhap tuoi"
            age = gets.to_i
            puts"Nhap dia chi"
            address = gets.chomp
            student = Student.new(name, age, address)
            school.add(student)
        when 2
            school.display20
        when 3
            puts school.display23vsDN
        when 4
            break;
        else
            puts "Khong hop le"
    end
end