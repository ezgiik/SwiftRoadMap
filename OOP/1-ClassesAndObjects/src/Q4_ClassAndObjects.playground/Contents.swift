import UIKit

//Bir araba galerisinde farklı marka ve modellerde arabalar bulunmaktadır. Her araba modelinin, üretim yılı, fiyat, renk ve mevcut durumu (yeni, ikinci el) gibi bilgilere sahip olduğunu düşünelim. Galeri, bir arabayı satın aldığında veya sattığında, ilgili arabanın envanterden eklenmesi veya çıkarılması gerekiyor. Ayrıca, belirli bir fiyat aralığındaki mevcut arabaları listelemek istiyoruz.


enum Durum{
    case yeni
    case ikinciEl
}

class Araba {
    let id: Int
    let model: String
    let uretimYili: Int
    let fiyat: Int
    let renk: String
    let mevcutDurum: Durum
    
    init (id: Int, model: String, uretimYili: Int, fiyat: Int, renk: String, mevcutDurum: Durum){
        self.id = id
        self.model = model
        self.uretimYili = uretimYili
        self.fiyat = fiyat
        self.renk = renk
        self.mevcutDurum = mevcutDurum
    }
}

class Galeri {
    var arabalar: [Araba] = []
    
    func arabaEkle(araba: Araba){
        arabalar.append(araba)
    }
    
    func arabaCikar(araba: Araba) -> Bool {
        if let index = arabalar.firstIndex(where: {$0.id == araba.id }){
            arabalar.remove(at: index)
            return true
        }else{
            print("Araba bulunamadı")
            return false
        }
    }
    
    func arabaListele(minFiyat: Int, maxFiyat: Int) -> [Araba] {
        return arabalar.filter{ araba in
            araba.fiyat >= minFiyat && araba.fiyat <= maxFiyat
        }
    }
    
    
    }

let araba1 = Araba(id: 1, model: "BMW", uretimYili: 2015, fiyat: 800000, renk: "beyaz", mevcutDurum: .ikinciEl)
let araba2 = Araba(id: 2, model: "Volkswagen", uretimYili: 2023, fiyat: 1500000, renk: "siyah", mevcutDurum: .yeni)

let galeri = Galeri()
galeri.arabaEkle(araba: araba1)
galeri.arabaEkle(araba: araba2)

let arabaListesi = galeri.arabaListele(minFiyat: 500000, maxFiyat: 1000000)
for araba in arabaListesi {
    print("Model: \(araba.model), Yıl: \(araba.uretimYili), Renk: \(araba.renk), Durum: \(araba.mevcutDurum)")
}


    
   

