class Person 
    attr_accessor :name, :age, :job, :passport 

    def initialize
    end

    def input
        puts "Nhap ten : "
        @name  = gets.to_s
        puts "Nhap tuoi : "
        @age  = gets.to_i
        puts "Nhap nghe nghiep : "
        @job  = gets.to_s
        puts "Nhap CCCD : "
        @passport  = gets.to_s
    end

    def display
        puts"Ten = #{@name}"
        puts"Tuoi = #{@age}"
        puts"Nghe = #{@job}"
        puts"Cccd = #{@passport}"
    end
end


#family
class Family < Person
    attr_accessor :number, :home_number

    def initialize()
        @persons = []
    end

    def input
        puts"Nhap so nha"
        @home_number = gets.to_s
        puts"Nhap so thanh vien"
        @number = gets.to_i
        for i in 0..(@number-1)
            puts"Nhap thanh vien thu #{i+1}"
            person = Person.new
            person.input()
            @persons << person
        end
    end

    def add (value)
        @persons.push(value)
    end

    def display
        puts"So thanh vien #{@number}"
        puts"So nha #{@home_number}"
        @persons.each{ |item| puts item.display}
    end
end

#town
class Town<Family
    def initialize()
        @families = []
    end

    def input
        puts"Nhap so ho gia dinh "
        number_family = gets.to_i

        for i in 0..(number_family-1)
            family = Family.new
            puts"Nhap ho gia dinh #{i+1}"
            family.input
            @families << family
        end
    end
    def add (value)
        @families.push(value)
    end

    def display
        @families.each{ |item| puts item.display}
    end
end

town = Town.new
town.input
puts "==Thong tin cac ho gia dinh=="
town.display

