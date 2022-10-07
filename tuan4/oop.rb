 # can bo
class CanBo
    attr_accessor :name_245, :age_245, :gender_245, :address_245
    def initialize(name_245, age_245, gender_245, address_245)
        @name_245 = name_245
        @age_245 = age_245
        @gender_245 =  gender_245
        @address_245 = address_245
    end


    # self.def nhap
    #     puts "Nhap ho va ten"
    #     @name_245 = gets.to_s
    #     puts "Nhap tuoi"
    #     @name_245 = gets.to_i
    #     puts "Nhap gioi tinh"
    #     @name_245 = gets.to_s
    #     puts "Nhap dia chi"
    #     @name_245 = gets.to_s
    # end

    def display
        puts " Ho va ten #{@name_245}"
        puts " Tuoi #{@age_245}"
        puts " Gioi tinh #{@gender_245}"
        puts " Dia chi #{@address_245}"
    end
end

# Cong nhan
class CongNhan < CanBo
    attr_accessor :bac_245

    def initialize(name_245, age_245, gender_245, address_245, bac_245)
        super(name_245, age_245, gender_245, address_245)
        @bac_245 = bac_245
    end

    def display
        super()
        puts "cap bac_245 #{@bac_245}"
    end
end

# Ky su
class KySu < CanBo
    attr_accessor :nganhdt_245

    def initialize(name_245, age_245, gender_245, address_245, nganhdt_245)
        super(name_245, age_245, gender_245, address_245)
        @nganhdt_245 = nganhdt_245
    end

    def display
        super()
        puts "Nganh dao tao #{@nganhdt_245}"
    end
end

# Nhan vien
class NhanVien < CanBo
    attr_accessor :congviec_245

    def initialize(name_245, age_245, gender_245, address_245, congviec_245)
        super(name_245, age_245, gender_245, address_245)
        @congviec_245 = congviec_245
    end

    def display
        super()
        puts "Cong viec #{@congviec_245}"
    end
end

# chon cong viec

canboArr = []
continue = true
while continue
    puts "1.Them moi can bo"
    puts "2.Tim kiem can bo theo ten"
    puts "3.Hien thi danh sach can bo"
    puts "4.Thoat"

    puts "Chon cong viec thuc hien"
    numb = gets.to_i
    case numb
        when 1

            puts "Nhap so can bo muon them"
            numcb = gets.to_i
            puts '=========Nhap can bo :========='
            for i in 0..(numcb-1)
                puts "Nhap ho va ten"
                @name_245 = gets.to_s
                puts "Nhap tuoi"
                @age_245 = gets.to_i
                puts "Nhap gioi tinh"
                @gender_245 = gets.to_s
                puts "Nhap dia chi"
                @address_245 = gets.to_s

                canbo = CanBo.new(@name_245, @age_245, @gender_245, @address_245)
                canboArr.push(canbo)
            end
        when 2
            puts "Nhap ten can bo can tim kiem"
            name_245_ip = gets.to_s
            result = canboArr.select{|canbo| canbo.name_245 == name_245_ip}
            puts 'Can bo tim dc'
            for i in 0..(result.length-1)
            puts "=====Can bo thu #{i+1} ====:"
            puts result[i].display
            end
        when 3
            puts '=========Danh sach can bo :========='
            for i in 0..(canboArr.length-1)
            puts "=====Can bo thu #{i+1} ====:"
            puts canboArr[i].display
            end
        else
            continue = false
    end
end