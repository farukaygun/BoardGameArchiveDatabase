IF DB_ID('BoardGameArchive') IS NOT NULL
	BEGIN
		ALTER DATABASE [BoardGameArchive] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
		USE master
		DROP DATABASE BoardGameArchive
	END
GO

CREATE DATABASE BoardGameArchive
	ON PRIMARY	(
					NAME=BoardGameArchive_data, 
					FILENAME='D:\belgeler\databases\BoardGameArchive_data.mdf', 
					SIZE=5MB, 
					MAXSIZE=100MB, 
					FILEGROWTH=5MB
				)
	LOG ON	(
				NAME=BoardGameArchive_log, 
				FILENAME='D:\belgeler\databases\BoardGameArchive_log.ldf', 
				SIZE=2MB, 
				MAXSIZE=50MB, 
				FILEGROWTH=1MB
			)
GO

USE BoardGameArchive

CREATE TABLE tblYayimci
(
	id INT PRIMARY KEY IDENTITY(1,1),
	adi NVARCHAR(15) NOT NULL,
	eMail NVARCHAR(50), --LIKE KULLAN
	kTarihi DATE,
	website NVARCHAR(20)
)

CREATE TABLE tblOyun 
(
	id INT PRIMARY KEY IDENTITY(1,1),
	adi NVARCHAR(25) NOT NULL,
	puan FLOAT,
	yayimlanmaTarihi DATE NOT NULL,
	zorluk INT, --1 10 ARASI 
	maxOyuncu INT,
	minOyuncu INT,
	maxSure INT,
	mınSure INT,
	yasSiniri INT NOT NULL,
	aciklama TEXT,
	yayimciId INT FOREIGN KEY REFERENCES tblYayimci(id) NOT NULL
)

CREATE TABLE tblOyuncu
(
	id INT PRIMARY KEY IDENTITY(1,1),
	adi NVARCHAR(15) NOT NULL,
	varsayilanMi BIT DEFAULT 0
)

CREATE TABLE tblLokasyon
(
	id INT PRIMARY KEY IDENTITY(1,1),
	adi NVARCHAR(15) NOT NULL,
	adres TEXT
)

CREATE TABLE tblOyna
(
	id INT PRIMARY KEY IDENTITY(1,1),
	adi NVARCHAR(15) NOT NULL,
	bitisTarihi DATETIME NOT NULL DEFAULT CONVERT(Time, GETDATE()),
	baslamaTarihi DATETIME NOT NULL DEFAULT CONVERT(Time, GETDATE()),
	süre DATETIME DEFAULT DATEDIFF(MINUTE, 'bitisTarihi', 'baslamaTarihi'),
	bittiMi BIT DEFAULT 0,
	yorum TEXT,
	oyuncuId INT FOREIGN KEY REFERENCES tblOyuncu(id) NOT NULL,
	oyuncuIdKurar INT FOREIGN KEY REFERENCES tblOyuncu(id) NOT NULL,
	lokasyonId INT FOREIGN KEY REFERENCES tblLokasyon(id) NOT NULL
)

CREATE TABLE tblRozet
(
	id INT PRIMARY KEY IDENTITY(1,1),
	adi NVARCHAR(15) NOT NULL,
	aktifMi BIT DEFAULT 1,
	oyuncuId INT FOREIGN KEY REFERENCES tblOyuncu(id) NOT NULL
)

CREATE TABLE tblGruplar
(
	id INT PRIMARY KEY IDENTITY(1,1),
	adi NVARCHAR(15) NOT NULL,
	aktifMi BIT DEFAULT 1,
	oyuncuId INT FOREIGN KEY REFERENCES tblOyuncu(id) NOT NULL
)

CREATE TABLE tblIl
(
	id INT PRIMARY KEY IDENTITY(1,1),
	adi NVARCHAR(15) NOT NULL,
	lokasyonId INT FOREIGN KEY REFERENCES tblLokasyon(id) NOT NULL
)

CREATE TABLE tblIlce
(
	id INT PRIMARY KEY IDENTITY(1,1),
	adi NVARCHAR(15) NOT NULL,
	lokasyonId INT FOREIGN KEY REFERENCES tblLokasyon(id) NOT NULL
)

CREATE TABLE tblArtist
(
	id INT PRIMARY KEY IDENTITY(1,1),
	adi NVARCHAR(15) NOT NULL,
	eMail NVARCHAR(50), --LIKE KULLAN
	dTarihi DATE
)

CREATE TABLE tblTasarimci
(
	id INT PRIMARY KEY IDENTITY(1,1),
	adi NVARCHAR(15) NOT NULL,
	eMail NVARCHAR(50), --LIKE KULLAN
	dTarihi DATE
)

CREATE TABLE tblOdul
(
	id INT PRIMARY KEY IDENTITY(1,1),
	adi NVARCHAR(15) NOT NULL,
	tarih DATETIME DEFAULT GETDATE(),
	oyunId INT FOREIGN KEY REFERENCES tblOyun(id) NOT NULL
)

CREATE TABLE tblKategori
(
	id INT PRIMARY KEY IDENTITY(1,1),
	adi NVARCHAR(15) NOT NULL,
)

--OYUNCU VE OYUN ARASINDAKI COKA COK ILISKI
CREATE TABLE tblOyuncuYorumYaparOyun
(
	id INT PRIMARY KEY IDENTITY(1,1),
	yorum TEXT,
	begenme INT,
	begenmeme INT,
	oyunId INT FOREIGN KEY REFERENCES tblOyun(id) NOT NULL,
	oyuncuId INT FOREIGN KEY REFERENCES tblOyuncu(id) NOT NULL
)

CREATE TABLE tblOyuncuSatinAlirOyun
(
	id INT PRIMARY KEY IDENTITY(1,1),
	fiyat SMALLMONEY,
	tarih DATETIME,
	aciklama TEXT,
	oyunId INT FOREIGN KEY REFERENCES tblOyun(id) NOT NULL,
	oyuncuId INT FOREIGN KEY REFERENCES tblOyuncu(id) NOT NULL
)

CREATE TABLE tblArtistYaparOyun
(
	artistId INT FOREIGN KEY REFERENCES tblArtist(id) NOT NULL,
	oyunId INT FOREIGN KEY REFERENCES tblOyun(id) NOT NULL
)

CREATE TABLE tblYayimciYayimlarOyun
(
	yayimciId INT FOREIGN KEY REFERENCES tblYayimci(id),
	oyunId INT FOREIGN KEY REFERENCES tblOyun(id) NOT NULL
)

CREATE TABLE tblTasarimciTasarlarOyun
(
	tasarimciId INT FOREIGN KEY REFERENCES tblTasarimci(id),
	oyunId INT FOREIGN KEY REFERENCES tblOyun(id) NOT NULL
)

CREATE TABLE tblOyunIcerirKategori
(
	oyunId INT FOREIGN KEY REFERENCES tblOyun(id) NOT NULL,
	kategoriId INT FOREIGN KEY REFERENCES tblKategori(id) NOT NULL
)

CREATE TABLE tblOyuncuArkadasOlur
(
	durum TEXT,
	OyuncuId INT FOREIGN KEY REFERENCES tblOyuncu(id) NOT NULL
)

CREATE TABLE tblOyuncuKatilirGrup
(
	OyuncuId INT FOREIGN KEY REFERENCES tblOyuncu(id) NOT NULL,
	GrupId INT FOREIGN KEY REFERENCES tblGruplar(id) NOT NULL
)

CREATE TABLE tblOyuncuKatilirOyna
(
	puan INT,
	pozisyon INT,
	OyuncuId INT FOREIGN KEY REFERENCES tblOyuncu(id) NOT NULL,
	GrupId INT FOREIGN KEY REFERENCES tblGruplar(id) NOT NULL
)

CREATE TABLE tblOyuncuSatinAlirRozet
(
	ozellik NVARCHAR(20),
	OyuncuId INT FOREIGN KEY REFERENCES tblOyuncu(id) NOT NULL,
	rozetId INT FOREIGN KEY REFERENCES tblRozet(id) NOT NULL
)

