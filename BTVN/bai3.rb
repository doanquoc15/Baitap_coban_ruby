class Candidate
    attr_accessor :id, :name, :address, :priority

    def initialize
    end

    def input
        puts "Nhap id : "
        @id  = gets.to_s
        puts "Nhap ten : "
        @name  = gets.to_s
        puts "Nhap dia chi : "
        @address  = gets.to_s
        puts "Nhap bac uu tien : "
        @priority  = gets.to_i
    end

    def display
        puts"ID = #{@id}"
        puts"NAME = #{@name}"
        puts"ADDRESS = #{@address}"
        puts"PRIORITY = #{@priority}"
    end
end

# CandidateA
class CandidateA < Candidate
    attr_accessor :math, :physical, :chemistry

    def initialize
    end

    def input
        super
        puts "Nhap diem toan : "
        @math  = gets.to_f
        puts "Nhap diem ly : "
        @physical  = gets.to_f
        puts "Nhap diem hoa : "
        @chemistry  = gets.to_f
    end

    def display
        super
        puts"MATH = #{@math}"
        puts"PHYSICAL = #{@physical}"
        puts"CHEMISTRY = #{@chemistry}"
    end
end

# CandidateB
class CandidateB < Candidate
    attr_accessor :math, :physical, :biology

    def initialize
    end

    def input
        super
        puts "Nhap diem toan : "
        @math  = gets.to_f
        puts "Nhap diem ly : "
        @physical  = gets.to_f
        puts "Nhap diem sinh : "
        @biology  = gets.to_f
    end

    def display
        super
        puts"MATH = #{@math}"
        puts"PHYSICAL = #{@physical}"
        puts"BIOLOGY = #{@biology}"
    end
end
# Candidatec
class CandidateC < Candidate
    attr_accessor :literature, :history, :geography

    def initialize
    end

    def input
        super
        puts "Nhap diem van : "
        @literature  = gets.to_f
        puts "Nhap diem su : "
        @history  = gets.to_f
        puts "Nhap diem dia : "
        @geography  = gets.to_f
    end

    def display
        super
        puts"LITERATURE = #{@literature}"
        puts"HISTORY = #{@history}"
        puts"GEOGRAPHY = #{@geography}"
    end
end

#main
class Main 
    def initialize()
        @items = []
    end

    # them thi sinh 
    def add(value)
        @items.push(value)
    end

    #hien thi thong tin va khoi thi
    def displayAll
         @items.each{ |item| print item.display}
    end

    #tim kiem thi sinh theo so bao danh
    def search(sbd)
        result = @items.select{|item| item.id == sbd}
        result.each{|item| puts item.display}
    end
end

#

main  = Main.new
while true
    puts "---Cac chuc nang chinh---"
    puts "Chon 1: Them moi sinh vien"
    puts "Chon 2: Hien thi thong tin sinh vien: "
    puts "Chon 3: Tim kiem theo so bao danh"
    puts "Chon 4: Thoat khoi chuong trinh:"
    print "Chon cong viec can thuc hien: "
    value  = gets.to_i
    case value
        when 1
            puts "Chon 1: Them sinh vien khoi A"
            puts "Chon 2: Them sinh vien khoi B"
            puts "Chon 3: Them sinh vien khoi C"
            print "Chon loai sinh vien: "
            type = gets.to_i
            print "So luong muon them : "
            number = gets.to_i
            case type
                when 1
                    for i in 0..(number-1)
                        candidateA = CandidateA.new
                        candidateA.input
                        main.add(candidateA)
                    end
               
                when 2
                    for i in 0..(number-1)
                        candidateB = CandidateB.new
                        candidateB.input
                        main.add(candidateB)
                    end

                when 3
                    for i in 0..(number-1)
                        candidateC = CandidateC.new
                        candidateC.input
                        main.add(candidateC)
                    end
                else
                    puts "Nhap khong hop le"
            end
        when 2
            puts"--Danh sach sinh vien--"
            main.displayAll
        when 3
            puts"Nhap so bao danh can tim : "
            sbd = gets.to_s
            main.search(sbd)
        when 4
            break
        else
            puts "Khong hop le"
    end
end