class Human
    attr_accessor :name,:height, :hair, :age, :phone, :email, :nation

    def initialize ( name, height, hair, age, phone, email, nation)
        @name = name;
        @height = height;
        @hair = hair;
        @age = age;
        @phone = phone;
        @email = email;
        @nation = nation;
    end

    def display
        puts "Name : #{@name}"
        puts "Height : #{@height}"
        puts "Hair color : #{@hair}"
        puts "Age : #{@age}"
        puts "Phone : #{@phone}"
        puts "Email : #{@email}"
        puts "Nation : #{@nation}"
    end
end


class Student < Human
    attr_accessor :math, :physical, :chemistry
    
    def initialize ( name, height, hair, age, phone, email, nation, math, physical, chemistry)
        @math = math;
        @physical = physical;
        @chemistry = chemistry;
        super(name, height, hair, age, phone, email, nation)
    end 

    def average
         (math + physical + chemistry )/3.0
    end

    def display
        super
        puts "Score average : #{average}"
    end

end
arr = []
student1 =  Student.new('Quoc','170cm','black',21,'0767420600','quoc@gmail.com','Kinh',4,2,9);
student2 =  Student.new('Anh','177cm','yellow',21,'0967440600','anh@gmail.com','Mong',7,5,9);
student3  =  Student.new('Tuan','168cm','purple',21,'0867410600','tuan@gmail.com','Tay',7,8,5);

arr.push(student1)
arr.push(student2)
arr.push(student3)
# truoc khi sap sep
puts '=========Danh sach sinh vien chua sap xep :========='
for i in 0..(arr.length-1)
   puts "=====Sinh vien #{i+1} ====:"
   puts arr[i].display
end

# Sau khi sap xep
puts "=========Danh sach sinh vien da sap xep : ==========="
arr2 = arr.sort_by{|student| [student.average]}.reverse
for i in 0..(arr2.length-1)
   puts "=====Sinh vien #{i+1} =====:"
   puts arr2[i].display
end