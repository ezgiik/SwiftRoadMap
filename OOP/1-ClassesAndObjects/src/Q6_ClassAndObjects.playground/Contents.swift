import UIKit

//Bir şehirde birden çok hastane bulunmaktadır. Her hastanenin belirli bir kapasitesi, adı ve uzmanlık alanları vardır (örn. kardiyoloji, nöroloji, ortopedi). Aynı zamanda hastaların adı, soyadı, tedavi edildiği hastane ve uzmanlık alanına göre tedavi gördüğü bölüm bilgileri mevcuttur. Hastaların, hangi hastanede hangi bölümde tedavi gördüğünü takip eden bir sistem oluşturmak istiyoruz.

enum UzmanlikAlani {
    case kardiyoloji
    case noroloji
    case ortopedi
}
class Bolum {
    var uzmanlik: UzmanlikAlani
    var hastalar: [Hasta] = []
    
    init(uzmanlik: UzmanlikAlani) {
        self.uzmanlik = uzmanlik
    }
}

class Hasta {
    var adi: String
    var soyadi: String
    weak var bolum: Bolum?
    
    init(adi: String, soyadi: String) {
        self.adi = adi
        self.soyadi = soyadi
    }
    
}

class Hastane {
    var adi: String
    var kapasite: Int
    var bolumler: [Bolum] = []
    
    init(adi: String, kapasite: Int) {
        self.adi = adi
        self.kapasite = kapasite
    }
    
    func hastaEkle(hasta: Hasta, bolume: UzmanlikAlani){
        if let bolum = bolumler.first(where: { $0.uzmanlik == bolume }){
            bolum.hastalar.append(hasta)
            hasta.bolum = bolum
        }
    }
}

let kardiyolojiBolumu = Bolum(uzmanlik: .kardiyoloji)
let hastane = Hastane(adi: "Merkez Hastanesi", kapasite: 1000)
hastane.bolumler.append(kardiyolojiBolumu)

let hasta1 = Hasta(adi: "Ali", soyadi: "Veli")
hastane.hastaEkle(hasta: hasta1, bolume: .kardiyoloji)
