SELECT * FROM tblOyuncu
SELECT * FROM tblOyna
SELECT * FROM tblOyun
SELECT * FROM tblOyuncuKatilirOyna
SELECT * FROM tblKategori
SELECT * FROM tblYayimci
SELECT * FROM tblLokasyon
SELECT * FROM tblOyuncuYorumYaparOyun
select * from tblOyunIcerirKategori
select * from tblOyuncuSatinAlirOyun

--2.SORGU
SELECT tblLokasyon.id
FROM tblLokasyon
INNER JOIN tblOyna
ON tblLokasyon.id = tblOyna.lokasyonId
EXCEPT
SELECT kategoriId
FROM tblKategori
INNER JOIN tblOyunIcerirKategori
ON tblKategori.id = tblOyunIcerirKategori.kategoriId
WHERE kategoriId = 1 

--50 BEGENMENIN USTUNDE YORUM YAPILAN YORUMLAR VE ADI
SELECT yorum, oyuncuId, adi
FROM tblOyuncuYorumYaparOyun
INNER JOIN tblOyuncu
ON tblOyuncuYorumYaparOyun.oyuncuId = tblOyuncu.id
WHERE begenme > 50
ORDER BY begenme

--BEŞTEN YUKSEK PUAN ALAN OYUNCULARIN LISTESI
SELECT OyuncuId, adi, puan
FROM tblOyuncuKatilirOyna
INNER JOIN tblOyuncu
ON tblOyuncuKatilirOyna.oyuncuId = tblOyuncu.id
WHERE puan >= 5
ORDER BY puan DESC

--LUTHER STARKIN KURDUGU OYUNLARIN IDSI VE ADRESI
SELECT oyuncuIdKurar , adres
FROM tblOyna
INNER JOIN tblOyuncu
ON tblOyna.oyuncuIdKurar = tblOyuncu.id
INNER JOIN tblLokasyon
ON tblOyna.lokasyonId = tblLokasyon.id
WHERE tblOyuncu.adi = 'Luther Stark'