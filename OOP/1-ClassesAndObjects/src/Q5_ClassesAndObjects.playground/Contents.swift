import UIKit

//Bir gezegenler arası nakliye şirketiniz var. Bu şirkette, gezegenler arasında yük taşıyan uzay gemileri bulunuyor. Her gemi, belirli bir yük kapasitesine sahip ve sadece belirli tip yükleri taşıyabiliyor (örn. tehlikeli madde, canlı yaratıklar, donmuş gıdalar). Şirket, bir gezegenden diğerine hangi geminin hangi yükleri taşıdığını takip etmek istiyor.

enum YukTipi{
    case tehlikeliMadde
    case canliYaratik
    case donmusGida
}

class HangiYuk{
    var tip: YukTipi
    var gemiler: [UzayGemisi] = []
    
    init(tip: YukTipi) {
        self.tip = tip
    }
}
class UzayGemisi {
    let id: Int
    let kapasite: Int
    
    var gezegenCikis: String
    var gezegenVaris: String
    
    init (kapasite: Int, gezegenCikis: String, gezegenVaris: String, id: Int){
        self.kapasite = kapasite
        self.gezegenCikis = gezegenCikis
        self.gezegenVaris = gezegenVaris
        self.id = id
    }
}

class NakliyeSirketi{
    var yukTipleri: [HangiYuk] = []
    
    func gemiEkle(gemi: UzayGemisi, gemiTipi: YukTipi) {
        if let tipx = yukTipleri.first(where: {$0.tip == gemiTipi}){
            tipx.gemiler.append(gemi)
            
        }
    }
}

let tehlikeliMaddeTipi = HangiYuk(tip: .tehlikeliMadde)
let gemi1 = UzayGemisi(kapasite: 100, gezegenCikis: "Mars", gezegenVaris: "Neptün", id: 1)
let nakliyeSirketi = NakliyeSirketi()

nakliyeSirketi.gemiEkle(gemi: gemi1, gemiTipi: .tehlikeliMadde)
