# tai lieu
class Tailieu
    attr_accessor :id, :nxb, :slph

    def initialize()
    end

    def input
        puts "Nhap id : "
        @id  = gets.to_s
        puts "Nhap nha xuat ban : "
        @nxb  = gets.to_s
        puts "Nhap so ban phat hanh : "
        @slph  = gets.to_i
    end

    def display
        puts"ID = #{@id}"
        puts"NXB = #{@nxb} "
        puts"SLPHATHANH = #{@slph} ";
    end
end

# sach
class Sach < Tailieu
    attr_accessor :tacgia, :sotrang

    def initialize()
    end

    def input
        super
        puts " Nhap tac gia : "
        @tacgia  = gets.to_s
        puts " Nhap so trang : "
        @sotrang  = gets.to_i
    end

     def display
        super
        puts"TACGIA = #{@tacgia}"
        puts"SOTRANG = #{@sotrang}"
    end
end

# Tap chi
class Tapchi < Tailieu
    attr_accessor :soph, :thang

    def initialize()
    end

    def input
        super
        puts " Nhap so phat hanh : "
        @soph  = gets.to_s
        puts " Nhap thang phat hanh: "
        @thang  = gets.to_i
    end

     def display
        super
        puts "SOPHATHANH = #{@soph}"
        puts"NGAY = #{@thang}"
    end
end

# sach
class Bao < Tailieu
    attr_accessor :ngay

    def initialize()
    end

    def input
        super
        puts " Nhap ngay phat hanh : "
        @ngay  = gets.to_i
    end

     def display
        return "#{super} NGAY = #{@ngay} ";
    end
end

#Main
class Main
    # 
    def initialize()
        @items = []
    end

    # them tai lieu(sach,bao, tapchi)
    def add(value)
        @items.push(value)
    end

    # xoa tai lieu(Bao, tailieu, tapchi)
    def delete(id)
        tailieu = @items.find{|item| item.id == id}
        if tailieu
            @items.reject! { |item| item.id == id }
        end
    end

    #Hien thi thong tin tai lieu
    def displayAll
        @items.each{ |item| print item.display}
    end

    #Tim kiem tai lieu theo sach, bao, tapchi
    def search(type)
        result = @items.select {|item| item.kind_of?(type)}
        result.each{|item| puts item.display}
    end
end


# 
main  = Main.new
while true
    puts "---Cac chuc nang chinh---"
    puts "Chon 1: Nhap tai lieu"
    puts "Chon 2: Tim kiem tai lieu theo loai: "
    puts "Chon 3: Hien thi tai lieu"
    puts "Chon 4: Xoa tai lieu theo id"
    puts "Chon 5: Thoat khoi chuong trinh:"
    print "Chon cong viec can thuc hien: "
    value  = gets.to_i
    case value
        when 1
            puts "Chon 1: Nhap sach"
            puts "Chon 2: Nhap tap chi"
            puts "Chon 3: Nhap bao"
            print "Chon loai tai lieu can nhap: "
            type = gets.to_i
            print "So luong muon nhap : "
            number = gets.to_i
            case type
                when 1
                    for i in 0..(number-1)
                        sach = Sach.new
                        sach.input
                        main.add(sach)
                    end
               
                when 2
                    for i in 0..(number-1)
                        tapchi = Tapchi.new
                        tapchi.input
                        main.add(tapchi)
                    end

                when 3
                    for i in 0..(number-1)
                        bao = Bao.new
                        bao.input
                        main.add(bao)
                    end
                else
                    puts "Nhap khong hop le"
            end
        when 2
            puts "Chon 1 tim theo sach"
            puts "Chon 2 tim theo tap chi"
            puts "Chon 3 tim theo bao"
            print "Chon gia tri: "
            gt = gets.to_i
            case gt
                when 1
                    main.search(Sach)
                when 2
                    main.search(Tapchi)
                when 3
                    main.search(Bao)
                else
                    puts "Invalid"
            end
        when 3
            main.displayAll
        when 4
            print "Chon id muon xoa: "
            id = gets
            main.delete(id)
            puts "Tai lieu con lai: "
            main.displayAll
        when 5
            break
        else
            puts "Khong hop le"
    end
end
