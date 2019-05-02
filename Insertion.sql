--İsimler Visual Studio Code eklentisi Faker ile rastgele olarak oluşturuldu.

USE BoardGameArchive

INSERT INTO tblYayimci
VALUES ('Olson, Schulist and Ledner', 'mail1', '2012-06-18 10:34:09', 'website1')

INSERT INTO tblYayimci
VALUES ('Ratke - Gleason', 'MAİL2', '2012-06-18 10:34:09', 'website2')

INSERT INTO tblYayimci
VALUES ('Miller - Zulauf', 'mail3', '2012-06-18 10:34:09', 'website3')

INSERT INTO tblYayimci
VALUES ('Welch Group', 'mail4', '2012-06-18 10:34:09', 'website4')

INSERT INTO tblOyun
VALUES ('oyun1', 7.7, '2012-06-18 10:34:09', 9, null, null, null, null, 18, 'aciklana', 1)

INSERT INTO tblOyun
VALUES ('oyun2', 10, '2012-06-18 10:34:09', 6, null, null, null, null, 17, 'aciklama2', 2)

INSERT INTO tblOyun
VALUES ('oyun3', 5.5, '2012-06-18 10:34:09', 6, null, null, null, null, 12, 'aciklama3', 4)

INSERT INTO tblOyun
VALUES ('oyun4', 3.5, '2012-06-18 10:34:09', 4, null, null, null, null, 8, 'aciklama4', 4)

INSERT INTO tblOyuncu
VALUES ('Luther Stark', 1)

INSERT INTO tblOyuncu
VALUES ('Darius Wyman', 2)

INSERT INTO tblOyuncu
VALUES ('Gregory Howe', 3)

INSERT INTO tblOyuncu
VALUES ('Ed Ortiz', 4)

INSERT INTO tblLokasyon
VALUES ('ev', 'Edwin Ridge 796 Herman Extension Apt. 264')

INSERT INTO tblLokasyon
VALUES ('otel', 'Zula Forest 3211 Rowland Ferry Suite 959')

INSERT INTO tblLokasyon
VALUES ('kulüp', 'Chanelle Cliff 868 Stanton Island Apt. 009')

INSERT INTO tblLokasyon
VALUES ('okul', 'Bradtke Estates 47324 Abshire Squares Suite 441')

INSERT INTO tblOyna
VALUES ('oyna1', '2019-04-18 10:34:09', '2019-04-19 10:34:09', null, 1, 'yorum', 1, 1, 1)

INSERT INTO tblOyna
VALUES ('oyna2', '2019-04-18 10:34:09', '2019-04-18 11:34:09', null, 1, 'yorum2', 1, 2, 2)

INSERT INTO tblOyna
VALUES ('oyna3', '2019-04-18 10:34:09', '2019-04-22 10:34:09', null, 1, 'yorum3', 3, 3, 3)

INSERT INTO tblOyna
VALUES ('oyna4', '2019-04-18 10:34:09', '2019-04-21 10:34:09', null, 1, 'yorum4', 4, 4, 4)

INSERT INTO tblRozet
VALUES ('rozet1', 0, 2)

INSERT INTO tblRozet
VALUES ('rozet2', 1, 4)

INSERT INTO tblRozet
VALUES ('rozet3', 1, 3)

INSERT INTO tblRozet
VALUES ('rozet4', 1, 3)

INSERT INTO tblGruplar
VALUES ('grup1', null, 1)

INSERT INTO tblGruplar
VALUES ('grup2', 0, 1)

INSERT INTO tblGruplar
VALUES ('grup3', null, 3)

INSERT INTO tblGruplar
VALUES ('grup4', 0, 4)

INSERT INTO tblIl
VALUES ('Florida', 1)

INSERT INTO tblIl
VALUES ('Boston', 2)

INSERT INTO tblIl
VALUES ('Massachusetts', 3)

INSERT INTO tblIl
VALUES ('Washington', 4)

INSERT INTO tblIlce
VALUES ('Key West', 1)

INSERT INTO tblIlce
VALUES ('Suffolk County', 2)

INSERT INTO tblIlce
VALUES ('Edgartown', 3)

INSERT INTO tblIlce
VALUES ('Longview', 4)

INSERT INTO tblArtist
VALUES ('Clovis Fadel', 'mail1', '1997-04-18')

INSERT INTO tblArtist
VALUES ('Antonia Kutch', 'mail2', '1996-04-18')

INSERT INTO tblArtist
VALUES ('Haleigh Gottlieb', 'mail3', '2001-01-11')

INSERT INTO tblArtist
VALUES ('Karley Gerhold', 'mail4', '1954-03-04')

INSERT INTO tblTasarimci
VALUES ('Katrine Gibson', 'mail1', '1997-04-18')

INSERT INTO tblTasarimci
VALUES ('Leonard Stehr', 'mail2', '1992-04-18')

INSERT INTO tblTasarimci
VALUES ('Brenna Veum', 'mail3', '1997-06-18')

INSERT INTO tblTasarimci
VALUES ('Lance Feest', 'mail4', '1997-07-18')

INSERT INTO tblOdul
VALUES ('odul1', null, 1)

INSERT INTO tblOdul
VALUES ('odul2', null, 2)

INSERT INTO tblOdul
VALUES ('odul3', null, 3)

INSERT INTO tblOdul
VALUES ('odul4', null, 4)

INSERT INTO tblKategori
VALUES ('kategori1')

INSERT INTO tblKategori
VALUES ('kategori2')

INSERT INTO tblKategori
VALUES ('kategori3')

INSERT INTO tblKategori
VALUES ('kategori4')

INSERT INTO tblOyuncuYorumYaparOyun
VALUES ('yorum1', 22, 0, 1, 3)

INSERT INTO tblOyuncuYorumYaparOyun
VALUES ('yorum2', 44, 3, 1, 1)

INSERT INTO tblOyuncuYorumYaparOyun
VALUES ('yorum3', 1, 111, 2, 2)

INSERT INTO tblOyuncuYorumYaparOyun
VALUES ('yorum4', 77, 12, 3, 4)

INSERT INTO tblOyuncuSatinAlirOyun
VALUES (12, '2019-03-04', 'aciklama1', 1, 1)

INSERT INTO tblOyuncuSatinAlirOyun
VALUES (32, '2018-01-04', 'aciklama2', 2, 2)

INSERT INTO tblOyuncuSatinAlirOyun
VALUES (200, '2012-08-15', 'aciklama3', 3, 3)

INSERT INTO tblOyuncuSatinAlirOyun
VALUES (199.99, '2014-11-23', 'aciklama4', 4, 4)

INSERT INTO tblOyuncuArkadasOlur
VALUES ('durum1', 1)

INSERT INTO tblOyuncuArkadasOlur
VALUES ('durum2', 1)

INSERT INTO tblOyuncuArkadasOlur
VALUES ('durum3', 3)

INSERT INTO tblOyuncuArkadasOlur
VALUES ('durum4', 4)

INSERT INTO tblOyuncuKatilirOyna
VALUES (8, 1, 1, 1)

INSERT INTO tblOyuncuKatilirOyna
VALUES (5, 1, 2, 2)

INSERT INTO tblOyuncuKatilirOyna
VALUES (7, 1, 3, 3)

INSERT INTO tblOyuncuKatilirOyna
VALUES (2, 1, 4, 4)

INSERT INTO tblOyuncuSatinAlirRozet
VALUES ('ozellik1', 1, 4)

INSERT INTO tblOyuncuSatinAlirRozet
VALUES ('ozellik2', 2, 3)

INSERT INTO tblOyuncuSatinAlirRozet
VALUES ('ozellik3', 3, 2)

INSERT INTO tblOyuncuSatinAlirRozet
VALUES ('ozellik4', 4, 1)

select * from tblYayimci
select * from tblOyun
select * from tblOyuncu
select * from tblArtist
select * from tblTasarimci
select * from tblOdul
select * from tblKategori
select * from tblOyuncuYorumYaparOyun
select * from tblOyuncuSatinAlirOyun
select * from tblOyuncuArkadasOlur
select * from tblOyuncuKatilirOyna
select * from tblOyuncuSatinAlirRozet