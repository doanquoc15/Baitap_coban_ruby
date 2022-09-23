class Student
    @name;
    @age;
    @maths;
    @physical;
    @chemistry;
    def initialize(name, age, maths, physical, chemistry)
        @name = name;
        @age = age;
        @maths = maths;
        @physical = physical;
        @chemistry = chemistry;
    end
    def name
        @name
      end
      # Định nghĩa setter để cập nhật biến
    def name=(name)
        @name = name
    end

    def age
        @age
      end
      # Định nghĩa setter để cập nhật biến
    def age=(age)
        @age = age
    end

    def maths
        @maths
      end
      # Định nghĩa setter để cập nhật biến
    def math=(maths)
        @maths = maths
    end


    def physical
        @physical
      end
      # Định nghĩa setter để cập nhật biến
    def physical=(physical)
        @physical = physical
    end

    def  chemistry
        @chemistry
      end
      # Định nghĩa setter để cập nhật biến
    def  chemistry=( chemistry)
        @chemistry =  chemistry
    end

    def average # định nghĩa phương thức instance
        (@maths + @physical + @chemistry )/3
    end

    def toString # định nghĩa phương thức instance
        puts "Name : #{name}age : #{age}Average #{average}"
    end
end


puts "Nhap ten sinh vien : "
name = gets

puts "Nhap masv : "
age = gets

puts "Nhap diem toan : "
maths = gets.to_i

puts "Nhap diem ly : "
physical = gets.to_i

puts "Nhap diem hoa : "
chemistry = gets.to_i
student = Student.new(name,age,maths,physical,chemistry);
student.toString
