import UIKit

// Verilen bir metindeki tekrar eden harfleri silen fonksiyon
func silTekrarEdenHarfleri(_ metin: String, _ tekrarSayisi: Int) -> String {
    // Harf sayılarını saklamak için bir sözlük oluştur
    var harfSayilari: [Character: Int] = [:]

    // Metindeki harf sayılarını hesapla
    for harf in metin {
        if harf.isLetter {  // Sadece harf karakterleri işlem yapılacak
            if let sayi = harfSayilari[harf] {
                harfSayilari[harf] = sayi + 1
            } else {
                harfSayilari[harf] = 1
            }
        }
    }

    // Yeni metni oluştur
    var yeniMetin = ""
    for harf in metin {
        if harf.isLetter {  // Sadece harf karakterleri işlem yapılacak
            if let sayi = harfSayilari[harf], sayi < tekrarSayisi {
                yeniMetin.append(harf)  // Tekrar sayısı kriterini karşılayan harfler yeni metne eklenir
            }
        } else {
            yeniMetin.append(harf)  // Boşluklar ve diğer karakterler doğrudan yeni metne eklenir
        }
    }

    return yeniMetin  // Sonuç olarak, istenen tekrar sayısını karşılamayan harfleri silmiş yeni metni döndür
}

let ornekMetin = "aaba kouq bux"
let tekrarSayisi = 3
let sonuc = silTekrarEdenHarfleri(ornekMetin, tekrarSayisi)
print(sonuc)  // Sonucu ekrana yazdır
