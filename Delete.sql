use BoardGameArchive

-- Yayımcı tablosundan kTarihi sütunu siliniyor.
ALTER TABLE tblYayimci
DROP COLUMN kTarihi

-- Mail adresi MAİL2 olan Yayımcı siliniyor.
DELETE FROM tblYayimci
WHERE eMail = 'MAİL2'

-- Yayımcı tablosunun içindeki tüm girdiler temizleniyor.
DELETE FROM tblYayimci

-- Minimum ve maximum oyuncu sayısı null olmayan oyunlar siliniyor.
DELETE FROM tblOyun
WHERE minOyuncu != NULL and maxOyuncu != NULL

-- Yaş sınırı 8 den küçük oyunlar siliniyor.
DELETE FROM tblOyun
WHERE yasSiniri < 8

-- 6 Puanın üstündeki oyunlar siliniyor.
DELETE FROM tblOyun
WHERE puan > 6

-- Adı Darius Wyman olan oyuncu siliniyor.
DELETE FROM tblOyuncu
WHERE adi = 'Darius Wyman'

-- Varsayılan olmayan oyuncular siliniyor.
DELETE FROM tblOyuncu
WHERE varsayilanMi = 0

-- Oyuncu tablosundan varsayilanMi sütunu siliniyor.
ALTER TABLE tblOyuncu
DROP COLUMN varsayilanMi

-- Adresi Null olan lokasyonlar siliniyor.
DELETE FROM tblLokasyon
WHERE adres LIKE NULL

-- Lokasyon tablosundan adres sütunu siliniyor.
ALTER TABLE tblLokasyon
DROP COLUMN adres

-- Lokasyon tablosu tamamen siliniyor.
DROP TABLE tblLokasyon

-- Adı oyna4 olan oyun siliniyor.
DELETE FROM tblOyna
WHERE adi = 'oyna3'

-- Id'si 1 olan oyuncunun oynadığı oyunlar siliniyor.
DELETE FROM tblOyna
WHERE oyuncuId = 1

-- Süre sütunu siliniyor.
ALTER TABLE tblOyna
DROP COLUMN süre

-- Aktif olmayan rozetler siliniyor.
DELETE FROM tblRozet
WHERE aktifMi = 0

-- Id'si 3 olan oyuncunun oluşturduğu rozetler siliniyor.
DELETE FROM tblRozet
WHERE oyuncuId = 3

-- Rozet tablosunun içindeki tüm kayıtlar siliniyor.
DELETE FROM tblRozet

-- Gruplar tablosundan aktif mi sütunu siliniyor.
ALTER TABLE tblGruplar
DROP COLUMN aktifMi

-- Adı grup2 olan grup siliniyor.
DELETE FROM tblGruplar
WHERE adi = 'grup2'

-- Kimin oluşturduğu bilinmeyen gruplar siliniyor.
DELETE FROM tblGruplar
WHERE oyuncuId = NULL

-- lokasyonId sütunu siliniyor.
ALTER TABLE tblIl
DROP COLUMN lokasyonId

-- Adı Massachusetts olan il siliniyor.
DELETE FROM tblIl
WHERE adi = 'Massachusetts'

-- Il tablosunun içindeki tüm kayıtlar siliniyor.
DELETE FROM tblIl

-- id'si 3 olan lokasyonun ilçesi siliniyor.
DELETE FROM tblIlce
WHERE lokasyonId = 3

-- Ilçe tablosunun adi sütunu siliniyor.
ALTER TABLE tblIlce
DROP COLUMN adi

-- Ilçe tablosu tamamen siliniyor.
DROP TABLE tblIlce

 -- Maili mail3 olan artist siliniyor.
DELETE FROM tblArtist
WHERE eMail = 'mail3'

-- dTarihi verilen tarihten sonra olan Artistler siliniyor.
DELETE FROM tblArtist
WHERE dTarihi > '1997-04-18'

-- eMail sütunu silniyor.
ALTER TABLE tblArtist
DROP COLUMN eMail

-- Adi Brenna Veum olan Tasarımcı siliniyor.
DELETE FROM tblTasarimci
WHERE adi = 'Brenna Veum'

-- Doğum tarihi verilen tarihten sonra olan tasarımcılar siliniyor.
DELETE FROM tblTasarimci
WHERE dTarihi > '1997-04-18'

-- eMail sütunu siliniyor.
ALTER TABLE tblTasarimci
DROP COLUMN eMail

-- Id'si 2 olan oyunun ödülleri siliniyor.
DELETE FROM tblOdul
WHERE oyunId = 2

-- Adı odul1 olan odul siliniyor.
DELETE FROM tblOdul
WHERE adi = 'odul1'

-- Odul tablosunun içi boşaltılıyor.
DELETE FROM tblOdul

-- Adi kategori1 olan Kategori siliniyor.
DELETE FROM tblKategori
WHERE adi = 'kategori1'

-- Kategori tablosunun adi sütunu siliniyor.
ALTER TABLE tblKategori
DROP COLUMN adi

-- Kategori tablosunun içi tamamen siliniyor.
DELETE FROM tblKategori







