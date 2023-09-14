import UIKit

enum YukTipi {
    case tehlikeliMadde
    case canliYaratik
    case donmusGida
}

class UzayGemisi {
    var adi: String
    var kapasite: Double
    var yukTipleri: [YukTipi]
    var yuklenenYukler: [Yuk] = []
    
    init(adi: String, kapasite: Double, yukTipleri: [YukTipi]) {
        self.adi = adi
        self.kapasite = kapasite
        self.yukTipleri = yukTipleri
    }
    
    func yukEkle(yuk: Yuk) -> Bool {
        if yukTipleri.contains(yuk.tip) && (yuklenenYukler.reduce(0, { $0 + $1.agirlik }) + yuk.agirlik) <= kapasite {
            yuklenenYukler.append(yuk)
            return true
        }
        return false
    }
}

class Yuk {
    var tip: YukTipi
    var agirlik: Double
    var baslangicGezegeni: String
    var hedefGezegeni: String
    
    init(tip: YukTipi, agirlik: Double, baslangicGezegeni: String, hedefGezegeni: String) {
            self.tip = tip
            self.agirlik = agirlik
            self.baslangicGezegeni = baslangicGezegeni
            self.hedefGezegeni = hedefGezegeni
        }
}

class NakliyeSirketi{
    var gemiler: [UzayGemisi] = []
    
    func gemiyeYukYukle(gemiAdi: String, yuk: Yuk) -> Bool {
        if let gemi = gemiler.first(where: {$0.adi == gemiAdi}){
            return gemi.yukEkle(yuk: yuk)
        }
        return false
    }
}

let gemi1 = UzayGemisi(adi: "GalaktikTaşıyıcı", kapasite: 5000.0, yukTipleri: [.tehlikeliMadde, .donmusGida])
let yuk1 = Yuk(tip: .tehlikeliMadde, agirlik: 1000.0, baslangicGezegeni: "Mars", hedefGezegeni: "Dünya")

let sirket = NakliyeSirketi()
sirket.gemiler.append(gemi1)

sirket.gemiyeYukYukle(gemiAdi: "GalaktikTaşıyıcı", yuk: yuk1)

