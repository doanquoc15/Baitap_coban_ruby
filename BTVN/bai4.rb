
class Person
    attr_accessor :name, :age, :job, :passport
    def initialize()
        print "Nhap ten: "
        @name = gets.chomp
        print "Nhap tuoi: "
        @age = gets.to_i
        print "Nhap nghe nghiep: "
        @job = gets.chomp
        print "Nhap cccd: "
        @passport = gets.chomp
    end

    def toString
        return "name=#{@name}, age= #{@age}, job=#{@job}, passport=#{@passport}"
    end
end

class Family
    attr_accessor :persons, :address

    def initialize()
        print "Nhap so thanh vien trong gia dinh: "
        n = gets.to_i
        @persons = []
        for i in 1..n
            puts "Nhap thanh vien thu #{i}:"
            person = Person.new
            @persons << person
        end
        print "Nhap dia chi: "
        @address = gets.chomp
    end
    
    def toString
        str = " "
        i = 1
        @persons.each{ |person| 
            str += "Thanh vien #{i}{#{person.toString}}"
            i += 1
        }
        return str
    end
end

class Town
    attr_accessor :families
    def initialize()
        print "Nhap so ho gia dinh trong thanh pho: "
        n = gets.to_i
        @families = []
        for i in 1..n
            puts "Nhap gia dinh thu #{i}:"
            family = Family.new
            @families << family
        end
    end
    
    def toString
        str = " "
        i = 1
        @families.each{ |family| 
            str += "Gai dinh #{i}{#{family.toString}}\n"
            i += 1
        }
        return str
    end
end

town  = Town.new

puts "Hien thi danh sach gia dinh trong thanh pho:"
puts town.toString