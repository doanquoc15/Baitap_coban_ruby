class Teacher
    attr_accessor :salary, :bonus, :penaty, :realSalary, :name, :age, :hometown, :id
    def initialize
        @id = id
        @name = name
        @age = age
        @salary = salary
        @bonus = bonus
        @penaty = penaty
        @realSalary = realSalary
        @hometown = hometown
    end

    def input 
        puts "Nhap id:"
        @id = gets.to_i
        puts "Nhap ten:"
        @name = gets.to_s
        puts "Nhap tuoi:"
        @age = gets.to_i
        puts "Nhap luong cung:"
        @salary = gets.to_f
        puts "Nhap luong thuong:"
        @bonus = gets.to_f
        puts "Nhap tien phat:"
        @penaty = gets.to_f
        puts "Nhap que quan:"
        @hometown = gets.to_s
    end

    def display
        puts "id: #{@id}"
        puts "ten: #{@name}"
        puts "tuoi: #{@age}"
        puts "dia chi: #{@hometown}"
        puts "ten: #{@salary}"
        puts "tuoi: #{@bonus}"
        puts "dia chi: #{@penaty}"
    end
end


class ManagementTeacher < Teacher
    def initialize
        @teachers = []
    end

    def add(student)
        @teachers.push(student)
    end

    def displayAll
        @teachers.each{|item| item.display}
    end

    def find(id)
        result = @teachers.select{|item| item.id == id}
        result.each{|item| puts item.display}
    end

    def calculator(id_1)
        count = 0
        @teachers.each do |item|
            if item.id == id_1
                count = item.salary + item.bonus - item.penaty
            end     
        end   
        return count
    end
end

managerTeacher = ManagementTeacher.new
while true
    puts "---Cac chuc nang chinh---"
    puts "Chon 1: Them moi giao vien"
    puts "Chon 2: Hien thi tat ca gia vien "
    puts "Chon 3: Xoa giao vien theo id"
    puts "Chon 4: Tinh luong nhan cua gia vien theo id"
    puts "Chon 5: Thoat chuong trinh"
    print "Chon cong viec can thuc hien: "
    value  = gets.to_i
    case value
        when 1
            teacher = Teacher.new
            teacher.input
            managerTeacher.add(teacher)
        when 2
            managerTeacher.displayAll
        when 3
            puts"Nhap id cua gia vien muon xoa"
            ID = gets.to_i
            managerTeacher.find(ID)
        when 4
            puts"Nhap id cua gia vien muon xoa"
            ID = gets.to_i
            puts managerTeacher.calculator(ID)
        when 5
            break
        else
            puts "Khong hop le"
    end
end