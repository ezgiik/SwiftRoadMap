import UIKit

class Kitap {
    //Özellikler
    var adi: String
    var yazar: String
    var tur: String
    var yayinTarihi: String
    
    //Initializer
    init(adi: String, yazar:String, tur: String, yayinTarihi: String) {
        self.adi = adi
        self.yazar = yazar
        self.tur = tur
        self.yayinTarihi = yayinTarihi
    }
    
    //Kitap bilgilerini yazdıran metot
    func bilgileriYazdir(){
        print("Kitap Adı   : \(adi)")
        print("Yazar       : \(yazar)")
        print("Tür         : \(tur)")
        print("Yayın Tarihi: \(yayinTarihi)")
    }
}
//Bir kitap örneği oluşturma
let kitap1 = Kitap(adi: "1984", yazar: "George Orwell", tur: "Roman", yayinTarihi: "1949")

//Kitap Bilgilerini Yazdırma
kitap1.bilgileriYazdir()


