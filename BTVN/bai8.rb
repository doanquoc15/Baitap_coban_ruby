class Student
    attr_reader :name, :age, :class_

    def initialize
    end

    def input 
        puts"Nhap ten sinh vien :"
        @name = gets.chomp
        puts"Nhap tuoi sinh vien :"
        @age = gets.to_i
        puts"Nhap lop sinh vien :"
        @school = gets.chomp
    end

    def display
        puts"Ten sinh vien : #{@name}"
        puts"Tuoi sinh vien : #{@age}"
        puts"Lop sinh vien : #{class_}"
    end

end

class Card < Student
    attr_reader :id, :borrowDate, :paymentDate, :bookId

    def input
        puts"Nhap ma the muon :"
        @id = gets.chomp
        puts"Nhap ngay muon:"
        @borrowDate = gets.chomp
        puts"Nhap ngay tra :"
        @paymentDate = gets.chomp
        puts"Nhap so hieu sach:"
        @bookId = gets.chomp
        super
    end

    def display
        puts"Ma the :#{id}"
        puts"Ngay muon sach :#{borrowDate}"
        puts"Ngay tra sach :#{paymentDate}"
        puts"So heiu  sach :#{bookId}"
        super
    end

    
end

class Main 
    def initialize
        @cards = []
    end

    def add(value)
        @cards.push(value)
    end

    def display
        @cards.each{|card| puts card.display}
    end

    def delete(iD)
        for item in @cards do
            if(item.id == iD)
                @cards.delete(item)
            end
        end
    end
end

main = Main.new

while true
    puts "---Cac chuc nang chinh---"
    puts "Chon 1: Them moi phieu muon"
    puts "Chon 2: Hien thi tat ca phieu muon "
    puts "Chon 3: Xoa phieu muon theo id"
    puts "Chon 4: Thoat chuong trinh"
    print "Chon cong viec can thuc hien: "
    value  = gets.to_i
    case value
        when 1
            card = Card.new
            card.input
            main.add(card)
        when 2
            main.display
        when 3
            puts"Nhap id cua phieu muon muon xoa"
            iD1 = gets.chomp
            main.delete(iD1)
            puts"Danh sach the muon sau khi xoa:"
            main.display
        when 4
            break
        else
            puts "Khong hop le"
    end
end