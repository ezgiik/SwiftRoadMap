import UIKit

class Gezegen {
    var isim: String
    var cap: Double  // km cinsinden
    var yuzeySicakligi: Double  // Celsius cinsinden
    var sirasi: Int

    init(isim: String, cap: Double, yuzeySicakligi: Double, sirasi: Int) {
        self.isim = isim
        self.cap = cap
        self.yuzeySicakligi = yuzeySicakligi
        self.sirasi = sirasi
    }

    func bilgiGoster() {
        print("\(isim), \(cap) km çapında, yüzey sıcaklığı \(yuzeySicakligi)°C olan ve Güneşe olan sırası \(sirasi) olan bir gezegendir.")
    }
}

let mars = Gezegen(isim: "Mars", cap: 6779, yuzeySicakligi: -62, sirasi: 4)
mars.bilgiGoster()
