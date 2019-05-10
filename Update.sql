use BoardGameArchive


-- Tüm ad sütunun değerlerini YayimciUpdate olarak güncelliyor.
UPDATE tblYayimci 
SET adi = 'YayimciUpdate'

-- Mail adresi mail2 olan yayımcının adını YayimciUpdate2 olarak güncelliyor.
UPDATE tblYayimci
SET adi = 'YayimciUpdate2'
WHERE eMail = 'mail2'

-- Adı Ratke - Gleason olan yayımcının kTarihi ve websitesini güncelliyor.
UPDATE tblYayimci
SET kTarihi = '2019-05-09 00:00:00', website = 'websiteUpdate'
WHERE adi = 'Ratke - Gleason'

-- Puanı 7.7 olan oyunun adını OyunIsımUpdate olarak güncelliyor.
UPDATE tblOyun
SET adi = 'OyunIsımUpdate'
WHERE puan = 7.7

-- Yaş sınırı 12 olan oyunların yaş sınırını 18 olarak güncelliyor.
UPDATE tblOyun
SET yasSiniri = 18
WHERE yasSiniri = 12

-- Minimum süresi girilmemiş oyunların yayımlanma tarihini anlık tarih olarak güncelliyor.
UPDATE tblOyun
SET yayimlanmaTarihi = GETDATE()
WHERE mınSure = null

-- id'si 4 olan oyunun minumum ve maksimum sürelerini güncelliyor. 
UPDATE tblOyun
SET minOyuncu = 10, maxOyuncu = 20
WHERE yayimciId = 4

-- Adı Luther Stark olan oyuncunun adı ve varsayılanMi değeri güncelleniyor.
UPDATE tblOyuncu
SET adi = 'OyuncuIsımUpdate', varsayilanMi = 0
WHERE adi = 'Luther Stark'

-- Varsayılan oyuncular varsayılan değil olarak güncelleniyor.
UPDATE tblOyuncu
SET varsayilanMi = 0
WHERE varsayilanMi = 1

-- Adresi Edwin Ridge 796 Herman Extension Apt. 264 olan lokasyonun adı güncelleniyor.
UPDATE tblLokasyon
SET adi = 'LokasyonAdiUpdate'
WHERE adres LIKE 'Edwin Ridge 796 Herman Extension Apt. 264'

-- Adı okul olan lokasyonun adresi güncelleniyor.
UPDATE tblLokasyon
SET adres = 'adresUpdated'
WHERE adi = 'okul'

-- adı oyna3 ve bitmiş olan oyunlar bitmemiş olarak güncelleniyor
-- ve yorumları yorumUpdated olarak güncelleniyor.
UPDATE tblOyna
SET yorum = 'yorumUpdated', bittiMi = 0
WHERE adi = 'oyna3' AND bittiMi = 1

-- Bitmemiş oyunların adı, bitiş tarihi güncelleniyor.
UPDATE tblOyna
SET adi = 'OynaAdiUpdated', bitisTarihi = CONVERT(Time, GETDATE())
WHERE bittiMi = 0

-- Bitmiş oyunların başlama tarihi güncelleniyor.
UPDATE tblOyna
SET baslamaTarihi = '2019-04-18 11:34:09.000'
WhERE bittiMi != 1

-- id'si 1 olan oyuncunun oluşturduğu rozetin adı güncelleniyor.
UPDATE tblRozet
SET adi = 'rozetAdiUpdated'
WHERE oyuncuId = 1

-- Aktif olmayan ve id'si 3 olan oyuncu tarafından oluşturulan rozetin
-- aktifliğ güncelleniyor.
UPDATE tblRozet
SET aktifMi = 0
WHERE aktifMi != 1 AND oyuncuId = 3

-- id'si 2 den büyük olan oyuncuların oluşturduğu rozetlerin,
-- rozeti oluşturan oyuncunun id'si ve aktifliği güncelleniyor.
UPDATE tblRozet
SET oyuncuId = 1, aktifMi = 0
WHERE oyuncuId > 2

-- id'si 1 olmayan oyuncuların oluşturduğu grupların aktifliği güncelleniyor.
UPDATE tblGruplar
SET aktifMi = 0
WHERE oyuncuId != 1

-- Aktif olmayan ve adı grup1 olan grubu oluşturan oyuncunun idsi güncelleniyor.
UPDATE tblGruplar
SET oyuncuId = 1
WHERE aktifMi = 0 AND adi = 'grup1'

-- Tüm gruplar aktif olarak güncelleniyor.
UPDATE tblGruplar
SET aktifMi = 1

-- Adı Boston olan şehrin adı Los Angeles olarak güncelleniyor.
UPDATE tblIl
SET adi = 'Los Angeles'
WHERE adi = 'Boston'

-- Adı Longview olmayan ilçelerin adı Key West olarak güncelleniyor
UPDATE tblIlce
SET adi = 'Key West'
WHERE adi != 'Longview'

-- Doğum tarihi verilen tarihten büyük olan artistlerin maili null olarak güncelleniyor.
UPDATE tblArtist
SET eMail = NULL
WHERE dTarihi > '1997-04-18'

-- Adı Karley Gerhold ve mail adresi null olaran artistin adı Faruk Aygün olarak güncelleniyor.
UPDATE tblArtist
SET adi = 'Faruk Aygün'
WHERE adi = 'Karley Gerhold' AND eMail != NULL

-- Adı Faruk Aygün olan artistin doğum tarihi anlık olarak güncelleniyor.
UPDATE tblArtist
SET dTarihi = GETDATE()
WHERE adi = 'Faruk Aygün'

-- dTarihi verilen tarihten büyük olan tasarımcının mail adresi null olarak güncelleniyor.
UPDATE tblTasarimci
SET eMail = NULL
WHERE dTarihi > '1997-04-18'

-- Adı Leonard Stehr ve mail adresi null olmayan tasarımcının adı Faruk Aygün olarak güncelleniyor.
UPDATE tblTasarimci
SET adi = 'Faruk Aygün'
WHERE adi = 'Leonard Stehr' AND eMail != NULL

-- Adı Faruk Aygün olan tasarımcının doğum tarihi anlık tarih olarak güncelleniyor.
UPDATE tblTasarimci
SET dTarihi = GETDATE()
WHERE adi = 'Faruk Aygün'

-- oyunId'si null olan odullerin tarihi null olarak güncelleniyor.
UPDATE tblOdul
SET tarih = NULL
WHERE oyunId != NULL

-- Tarihi anlık tarihten küçük olan ödüllerin adı odul olarak güncelleniyor.
UPDATE tblOdul
SET adi = 'odul'
WHERE tarih < GETDATE()

-- Ödüllerin tarihi null olarak güncelleniyor.
UPDATE tblOdul
SET tarih = NULL

-- Adı Null olan kategorinin adı kategoriAdi olaran güncelleniyor.
UPDATE tblKategori
SET adi = 'kategoriAdi'
WHERE adi = NULL
