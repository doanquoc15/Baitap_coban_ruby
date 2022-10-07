class Vehicle
    attr_accessor :id, :hangsx, :namsx, :dongxe, :giaban, :bienso, :mauxe
    
    def initialize
    end

    def input
        puts "Nhap id : "
        @id  = gets.to_i
        puts "Nhap hang san xuat : "
        @hangsx  = gets.chomp
        puts "Nhap nam san xuat:"
        @namsx  = gets.to_i
        puts "Nhap dong xe:"
        @dongxe = gets.chomp
        puts "Nhap gia ban:"
        @giaban = gets.to_f
        puts "Nhap bien so xe:"
        @bienso = gets.chomp
        puts "Nhap mau xe:"
        @mauxe = gets.chomp
    end

    def display
        puts "Id : #{@id}"
        puts "Hang san xuat: #{@hangsx}"
        puts "Nam san xuat:#{@namsx}"
        puts "Dong xe: #{@dongxe}"
        puts "Gia ban: #{@giaban}"
        puts "Bien so xe: #{@bienso}"
        puts "Mau xe: #{@mauxe}"
    end
end

class Motobike < Vehicle
    attr_accessor :congsuat, :binhxang

    def initialize
    end

    def input 
        super
        puts "Nhap cong xuat"
        @congsuat = gets.chomp
        puts"Nhap dung tich xang: "
        @binhxang = gets.to_i
    end

    def display
        super
        puts "Cong xuat xe: #{@congsuat}"
        puts "Dung tich binh xang: #{@binhxang}"
    end
end

class Car < Vehicle
    attr_accessor :sochongoi, :kieudongco, :nhienlieu, :sotuikhi, :ngaydangkiem
    def initialize
    
    end
    
    def input
        super
        puts"Nhap so cho ngoi:"
        @sochongoi = gets.to_i
        puts"Nhap kieu dong co:"
        @kieudongco = gets.chomp
        puts"Nhap loai nhien lieu:"
        @nhienlieu = gets.chomp
        puts"Nhap so tui khi:"
        @sotuikhi = gets.to_i
        puts"Nhap so ngay dang kiem:"
        @ngaydangkiem = gets.chomp
    end

    def display
        super
        puts "So cho ngoi: #{@sochongoi}"
        puts "Kieu dong co:#{@kieudongco}"
        puts "Loai nhien lieu: #{@nhienlieu}"
        puts "So tui khi: #{@sotuikhi}"
        puts "Ngay dang kiem: #{@ngaydangkiem}"
        puts "Mau xe: #{@mauxe}"
    end
end

class Truck < Vehicle
    attr_accessor :trongtai
    def initialize
    end
    def input
        super
        puts "Nhap trong tai:"
        @trongtai = gets.to_i
    end

    def display
        super
        puts"Trong tai:#{@trongtai}"
    end
end

class ManagementVehicle
    def initialize
        @vehicles = []
    end
    #them
    def add(value)
        @vehicles.push(value)
    end
    #hien thi
    def displayAll
         @vehicles.each{ |item| print item.display}
    end

    # xoa 
    def delete(iD)
        for item in @vehicles do
            if(item.id == iD)
                @vehicles.delete(item)
            end
        end
    end
    #tim kiem
    def searchHSX(value)
        result = @vehicles.select{|item| item.hangsx == value}
        result.each{|item| puts item.display}
    end

    def searchBSX(value)
        result = @vehicles.select{|item| item.bienso == value}
        result.each{|item| puts item.display}
    end

    def searchMX(value)
        result = @vehicles.select{|item| item.mauxe == value}
        result.each{|item| puts item.display}
    end
end



# 
main  = ManagementVehicle.new
while true
    puts "---Cac chuc nang chinh---"
    puts "Chon 1: Nhap phuong tien"
    puts "Chon 2: Hien thi tat ca xe "
    puts "Chon 3: Tim xe (hangsx, mau, bienso)"
    puts "Chon 4: Xoa xe theo id"
    puts "Chon 5: Thoat khoi chuong trinh:"
    print "Chon cong viec can thuc hien: "
    value  = gets.to_i
    case value
        when 1
            puts "Chon 1: Nhap xe may"
            puts "Chon 2: Nhap xe oto"
            puts "Chon 3: Nhap xe tai"
            print "Chon loai tai lieu can nhap: "
            type = gets.to_i
            print "So luong muon nhap : "
            number = gets.to_i
            case type
                when 1
                    for i in 0..(number-1)
                        puts"Nhap thong tin xe thu #{i+1}"
                        motobike = Motobike.new
                        motobike.input
                        main.add(motobike)
                    end
               
                when 2
                    for i in 0..(number-1)
                        puts"Nhap thong tin xe thu #{i+1}"
                        car = Car.new
                        car.input
                        main.add(car)
                    end

                when 3
                    for i in 0..(number-1)
                        puts"Nhap thong tin xe thu #{i+1}"
                        truck = Truck.new
                        truck.input
                        main.add(truck)
                    end
                else
                    puts "Nhap khong hop le"
            end
        when 2
            main.displayAll
        when 3
            puts "Chon 1 tim theo hang san xuat."
            puts "Chon 2 tim theo mau xe"
            puts "Chon 3 tim theo bien so"
            print "Chon gia tri: "
            gt = gets.to_i
            case gt
                when 1
                    puts"Nhap hang san xuat:"
                    hsx = gets.chomp
                    main.searchHSX(hsx)
                when 2
                    puts"Nhap mau xe:"
                    color = gets.chomp
                    main.searchMX(color)
                when 3
                    puts"Nhap bien so:"
                    bs = gets.chomp
                    main.searchBS(bs)
                else
                    puts "Khong hop le"
            end
        when 4
            print "Chon id muon xoa: "
            iD = gets.to_i
            main.delete(iD)
            puts"Phuong tien con lai:"
            main.displayAll
        when 5
            break
        else
            puts "Khong hop le"
    end
end
