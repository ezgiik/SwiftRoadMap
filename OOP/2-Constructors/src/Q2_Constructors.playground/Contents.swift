import UIKit

class BankaHesabi {
    var sahibi: String
    var hesapNumarasi: Int
    var bakiye: Double = 0.0
    static var sonrakiHesapNumarasi: Int = 1000

    init(sahibi: String) {
        self.sahibi = sahibi
        self.hesapNumarasi = BankaHesabi.sonrakiHesapNumarasi
        BankaHesabi.sonrakiHesapNumarasi += 1
    }

    func bilgiGoster() {
        print("\(sahibi) adlı kişiye ait \(hesapNumarasi) numaralı hesapta \(bakiye) TL bulunmaktadır.")
    }
}

let ahmetHesap = BankaHesabi(sahibi: "Ahmet")
ahmetHesap.bilgiGoster()  // Ahmet adlı kişiye ait 1000 numaralı hesapta 0.0 TL bulunmaktadır.

let ayseHesap = BankaHesabi(sahibi: "Ayşe")
ayseHesap.bilgiGoster()  // Ayşe adlı kişiye ait 1001 numaralı hesapta 0.0 TL bulunmaktadır.
