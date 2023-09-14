import UIKit

class Kitap {
    var adi: String
    var yazar: String
    var tur: String
    var yayinTarihi: String
    var oduncAlindiMi: Bool = false
    
    init(adi: String, yazar: String, tur: String, yayinTarihi: String, oduncAlindiMi: Bool) {
        self.adi = adi
        self.yazar = yazar
        self.tur = tur
        self.yayinTarihi = yayinTarihi
    }
}

class Raf {
    var rafNumarasi: Int
    var kapasite: Int
    var kitaplar: [Kitap] = []
    
    init(rafNumarasi:Int, kapasite: Int) {
        self.rafNumarasi = rafNumarasi
        self.kapasite = kapasite
    }
    
    func kitapEkle(kitap: Kitap) -> Bool {
        if kitaplar.count < kapasite {
            kitaplar.append(kitap)
            return true
        }else{
            print("Raf dolu!")
            return false
        }
    }
    
    func kitapCikar(kitap: Kitap) -> Bool {
        if let index = kitaplar.firstIndex(where: { $0.adi == kitap.adi }){
            kitaplar.remove(at: index)
            return true
        }else {
            print("Kitap rafta bulunamadı!")
            return false
        }
    }
}

let kitap1 = Kitap(adi: "1984", yazar: "George Orwel", tur: "Roman", yayinTarihi: "1949", oduncAlindiMi: true)
let raf1 = Raf(rafNumarasi: 1, kapasite: 10)

raf1.kitapEkle(kitap: kitap1)

