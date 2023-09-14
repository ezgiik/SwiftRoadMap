import UIKit

//Bir otelde, farklı tipte odalar (tek kişilik, çift kişilik, suit) bulunmaktadır. Otelde, oda fiyatlarını, oda kapasitelerini ve oda durumunu (boş mu, dolu mu) yönetmek istiyoruz. Ayrıca, belirli bir tarihte boş olan odaları listelemek ve bir odayı rezerve etmek istiyoruz.

enum OdaTipi{
    case TekKisilik
    case CiftKisilik
    case Suit
}

class Oda {
    
    var fiyat: Double
    var kapasite: Int
    var doluMu: Bool = false
    var tip: OdaTipi
    
    init(fiyat: Double, kapasite: Int, tip: OdaTipi) {
        
        self.fiyat = fiyat
        self.kapasite = kapasite
        self.tip = tip
    }

}

class Otel{
    var odalar: [Oda] = []
    
    func bosOdalar() -> [Oda] {
        return odalar.filter{ !$0.doluMu}
    }
    
    func odaRezervEt(oda: Oda) -> Bool {
        if !oda.doluMu {
            oda.doluMu = true
            return true
        }else {
            print("Oda zaten dolu!")
            return false
        }
    }
  
}

let oda1 = Oda(fiyat: 100.0, kapasite: 1, tip: .TekKisilik)
let oda2 = Oda(fiyat: 150.0, kapasite: 2, tip: .CiftKisilik)
let oda3 = Oda(fiyat: 300.0, kapasite: 3, tip: .Suit)

let otel = Otel()
otel.odalar = [oda1, oda2, oda3]

otel.odaRezervEt(oda: oda1) //Odayı rezerve eder ve "true" döner.

let mevcutBosOdalar = otel.bosOdalar() //Şuanki boş odaların listesini döndürür.


    

