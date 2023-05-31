-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 19 May 2023, 19:57:43
-- Sunucu sürümü: 5.7.36
-- PHP Sürümü: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `osym_elmas_mengu`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `alanlar`
--

DROP TABLE IF EXISTS `alanlar`;
CREATE TABLE IF NOT EXISTS `alanlar` (
  `alan_id` int(11) NOT NULL AUTO_INCREMENT,
  `alan_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`alan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `alanlar`
--

INSERT INTO `alanlar` (`alan_id`, `alan_ad`) VALUES
(1, 'Sayisal'),
(2, 'Esit_agirlik'),
(3, 'Sozel'),
(4, 'Dil');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `algoritma`
--

DROP TABLE IF EXISTS `algoritma`;
CREATE TABLE IF NOT EXISTS `algoritma` (
  `algoritma_id` int(11) NOT NULL AUTO_INCREMENT,
  `ogrenci_id` int(11) NOT NULL,
  `prg_dili_id` int(11) NOT NULL,
  PRIMARY KEY (`algoritma_id`),
  KEY `ogrenci_id` (`ogrenci_id`),
  KEY `prg_dili_id` (`prg_dili_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `algoritma`
--

INSERT INTO `algoritma` (`algoritma_id`, `ogrenci_id`, `prg_dili_id`) VALUES
(1, 8, 13),
(2, 11, 2),
(3, 4, 11),
(4, 18, 4),
(5, 7, 9),
(6, 6, 5),
(7, 16, 14),
(8, 12, 3),
(9, 9, 6),
(10, 5, 15),
(11, 2, 5),
(12, 15, 1),
(13, 14, 10),
(14, 17, 14),
(15, 3, 13),
(16, 10, 8),
(17, 2, 11),
(18, 1, 7),
(19, 16, 10),
(20, 11, 6),
(21, 4, 14),
(22, 6, 3),
(23, 9, 8),
(24, 6, 12),
(25, 13, 9),
(26, 12, 2),
(27, 12, 13),
(28, 9, 5),
(29, 5, 10),
(30, 7, 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `arabalar`
--

DROP TABLE IF EXISTS `arabalar`;
CREATE TABLE IF NOT EXISTS `arabalar` (
  `araba_id` int(11) NOT NULL AUTO_INCREMENT,
  `ogretmen_id` int(11) NOT NULL,
  `marka` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`araba_id`),
  KEY `ogretmen_id` (`ogretmen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `arabalar`
--

INSERT INTO `arabalar` (`araba_id`, `ogretmen_id`, `marka`) VALUES
(1, 10, 'FORD'),
(2, 11, 'OPEL'),
(3, 8, 'TOYOTA'),
(4, 12, 'FİAT'),
(5, 14, 'AUDİ'),
(6, 19, 'TOGG'),
(7, 12, 'BMW'),
(8, 11, 'BMW'),
(9, 22, 'HONDA'),
(10, 7, 'HONDA'),
(11, 13, 'FİAT'),
(12, 4, 'FORD'),
(13, 25, 'TOYOTA'),
(14, 23, 'VOLVO'),
(15, 21, 'DACİA'),
(16, 5, 'AUDİ'),
(17, 18, 'RENAULT'),
(18, 20, 'KIA'),
(19, 15, 'MAZDA'),
(20, 3, 'CİTROEN'),
(21, 10, 'NİSSAN'),
(22, 6, 'MERCEDES'),
(23, 8, 'SKODA'),
(24, 16, 'HYUNDAİ'),
(25, 9, 'JEEP');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `basari_yuzdesi`
--

DROP TABLE IF EXISTS `basari_yuzdesi`;
CREATE TABLE IF NOT EXISTS `basari_yuzdesi` (
  `basari_id` int(11) NOT NULL AUTO_INCREMENT,
  `yuzde` int(11) NOT NULL,
  `yil` year(4) NOT NULL,
  PRIMARY KEY (`basari_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `basari_yuzdesi`
--

INSERT INTO `basari_yuzdesi` (`basari_id`, `yuzde`, `yil`) VALUES
(1, 25, 2018),
(2, 50, 2019),
(3, 70, 2019),
(4, 75, 2018),
(5, 30, 2020),
(6, 55, 2021),
(7, 65, 2020),
(8, 60, 2022),
(9, 75, 2021),
(10, 35, 2018),
(11, 40, 2019),
(12, 60, 2022),
(13, 70, 2021),
(14, 80, 2020),
(15, 85, 2018),
(16, 10, 2019);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bilgisayarlar`
--

DROP TABLE IF EXISTS `bilgisayarlar`;
CREATE TABLE IF NOT EXISTS `bilgisayarlar` (
  `bilgisayar_id` int(11) NOT NULL AUTO_INCREMENT,
  `marka` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ogretmen_id` int(11) NOT NULL,
  `ogrenci_id` int(11) NOT NULL,
  `ogretim_uyesi_id` int(11) NOT NULL,
  PRIMARY KEY (`bilgisayar_id`),
  KEY `ogrenci_id` (`ogrenci_id`),
  KEY `ogretim_uyesi_id` (`ogretim_uyesi_id`),
  KEY `ogretmen_id` (`ogretmen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `bilgisayarlar`
--

INSERT INTO `bilgisayarlar` (`bilgisayar_id`, `marka`, `ogretmen_id`, `ogrenci_id`, `ogretim_uyesi_id`) VALUES
(1, 'ASUS', 14, 1, 12),
(2, 'LENOVO', 5, 10, 12),
(3, 'ACER', 3, 19, 1),
(4, 'HP', 9, 12, 9),
(5, 'CASPER', 19, 16, 7),
(6, 'DELL', 22, 8, 6),
(7, 'EXPER', 12, 13, 5),
(8, 'APPLE', 16, 4, 11),
(9, 'TOSHİBA', 12, 3, 12),
(10, 'HUAWEİ', 23, 14, 20);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bolumler`
--

DROP TABLE IF EXISTS `bolumler`;
CREATE TABLE IF NOT EXISTS `bolumler` (
  `bolum_id` int(11) NOT NULL AUTO_INCREMENT,
  `bolum_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `universite_id` int(11) NOT NULL,
  PRIMARY KEY (`bolum_id`),
  KEY `universite_id` (`universite_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `bolumler`
--

INSERT INTO `bolumler` (`bolum_id`, `bolum_ad`, `universite_id`) VALUES
(1, 'BİLGİSAYAR', 15),
(2, 'TIP', 4),
(3, 'İNŞAAT', 15),
(4, 'HEMŞİRELİK', 8),
(5, 'PSİKOLOJİ', 16),
(6, 'SOSYOLOJİ', 1),
(7, 'GAZETECİLİK', 20),
(8, 'İLETİŞİM', 20),
(9, 'YAZILIM', 1),
(10, 'HUKUK', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dallar`
--

DROP TABLE IF EXISTS `dallar`;
CREATE TABLE IF NOT EXISTS `dallar` (
  `dal_id` int(11) NOT NULL AUTO_INCREMENT,
  `alan_id` int(11) NOT NULL,
  `bolum_id` int(11) NOT NULL,
  PRIMARY KEY (`dal_id`),
  KEY `alan_id` (`alan_id`),
  KEY `bolum_id` (`bolum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `dallar`
--

INSERT INTO `dallar` (`dal_id`, `alan_id`, `bolum_id`) VALUES
(1, 2, 10),
(2, 1, 2),
(3, 1, 1),
(4, 3, 8),
(5, 2, 5),
(6, 2, 6),
(7, 3, 7),
(8, 1, 9);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dersler`
--

DROP TABLE IF EXISTS `dersler`;
CREATE TABLE IF NOT EXISTS `dersler` (
  `ders_id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ogretmen_id` int(11) NOT NULL,
  `ogrenci_id` int(11) NOT NULL,
  PRIMARY KEY (`ders_id`),
  KEY `ogrenci_id` (`ogrenci_id`),
  KEY `ogretmen_id` (`ogretmen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `dersler`
--

INSERT INTO `dersler` (`ders_id`, `ad`, `ogretmen_id`, `ogrenci_id`) VALUES
(1, 'MATEMATİK', 10, 8),
(2, 'TÜRKÇE', 21, 17),
(3, 'FEN BİLİMLERİ', 15, 3),
(4, 'SOSYAL BİLGİLER', 4, 7),
(5, 'TARİH', 15, 19),
(6, 'KİMYA', 9, 12),
(7, 'COĞRAFYA', 19, 15),
(8, 'EDEBİYAT', 23, 14),
(9, 'FİZİK', 11, 11),
(10, 'MÜZİK', 5, 20);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `diller`
--

DROP TABLE IF EXISTS `diller`;
CREATE TABLE IF NOT EXISTS `diller` (
  `dil_id` int(11) NOT NULL AUTO_INCREMENT,
  `dil_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`dil_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `diller`
--

INSERT INTO `diller` (`dil_id`, `dil_ad`) VALUES
(1, 'İNGİLİZCE'),
(2, 'TÜRKÇE'),
(3, 'FRANSIZCA'),
(4, 'İTALYANCA'),
(5, 'İSPANYOLCA'),
(6, 'ALMANCA'),
(7, 'ARAPÇA'),
(8, 'HİNTÇE'),
(9, 'RUSÇA'),
(10, 'ÇİNCE'),
(11, 'JAPONCA'),
(12, 'KORECE'),
(13, 'TAYCA'),
(14, 'URDUCA');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hobiler`
--

DROP TABLE IF EXISTS `hobiler`;
CREATE TABLE IF NOT EXISTS `hobiler` (
  `hobi_id` int(11) NOT NULL AUTO_INCREMENT,
  `hobi_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`hobi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hobiler`
--

INSERT INTO `hobiler` (`hobi_id`, `hobi_ad`) VALUES
(1, 'KİTAP OKUMA'),
(2, 'OYUN OYNAMA'),
(3, 'SATRANÇ'),
(4, 'ÇİÇEK YETİŞTİRMEK'),
(5, 'HAYVAN BESLEMEK'),
(6, 'DİKİŞ ÖRGÜ YAPMAK'),
(7, 'RESİM YAPMAK'),
(8, 'TAKI TASARIMI'),
(9, 'FOTOĞRAF ÇEKMEK'),
(10, 'OKÇULUK'),
(11, 'BİSİKLET SÜRMEK'),
(12, 'YÜZME'),
(13, 'KOŞU'),
(14, 'KAYAK'),
(15, 'TENİS');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kulupler`
--

DROP TABLE IF EXISTS `kulupler`;
CREATE TABLE IF NOT EXISTS `kulupler` (
  `kulup_id` int(11) NOT NULL AUTO_INCREMENT,
  `kulup_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`kulup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kulupler`
--

INSERT INTO `kulupler` (`kulup_id`, `kulup_ad`) VALUES
(1, 'SİVİL SAVUNMA'),
(2, 'RESİM MÜZİK'),
(3, 'GEZİ'),
(4, 'SPOR'),
(5, 'ÇEVRE'),
(6, 'KIZILAY'),
(7, 'TEMİZLİK'),
(8, 'KÜTÜPHANECİLİK'),
(9, 'FEN TEKNOLOJİ'),
(10, 'BİLİŞİM'),
(11, 'YAYIN İLETİŞİM'),
(12, 'İZCİLİK'),
(13, 'DANS'),
(14, 'DİL'),
(15, 'HALK OYUNLARI'),
(16, 'KÜLTÜR EDEBİYAT'),
(17, 'YEŞİLAY'),
(18, 'YARDIMLAŞMA DAYANIŞMA');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `lisanlar`
--

DROP TABLE IF EXISTS `lisanlar`;
CREATE TABLE IF NOT EXISTS `lisanlar` (
  `lisan_id` int(11) NOT NULL AUTO_INCREMENT,
  `dil_id` int(11) NOT NULL,
  `ogrenci_id` int(11) NOT NULL,
  `ogretmen_id` int(11) NOT NULL,
  `ogretim_uyesi_id` int(11) NOT NULL,
  PRIMARY KEY (`lisan_id`),
  KEY `dil_id` (`dil_id`),
  KEY `ogrenci_id` (`ogrenci_id`),
  KEY `ogretim_uyesi_id` (`ogretim_uyesi_id`),
  KEY `ogretmen_id` (`ogretmen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `lisanlar`
--

INSERT INTO `lisanlar` (`lisan_id`, `dil_id`, `ogrenci_id`, `ogretmen_id`, `ogretim_uyesi_id`) VALUES
(1, 11, 3, 8, 19),
(2, 4, 10, 21, 2),
(3, 7, 18, 22, 10),
(4, 1, 1, 4, 1),
(5, 8, 19, 19, 15),
(6, 4, 5, 13, 18),
(7, 6, 7, 12, 7),
(8, 11, 8, 5, 5),
(9, 12, 19, 14, 19),
(10, 5, 3, 9, 15),
(11, 10, 20, 1, 13),
(12, 13, 2, 13, 5),
(13, 9, 6, 12, 11),
(14, 9, 18, 1, 6),
(15, 5, 16, 10, 20),
(16, 8, 9, 20, 4),
(17, 2, 9, 14, 10),
(18, 8, 5, 4, 11),
(19, 11, 18, 22, 3),
(20, 3, 4, 10, 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `liseler`
--

DROP TABLE IF EXISTS `liseler`;
CREATE TABLE IF NOT EXISTS `liseler` (
  `lise_id` int(11) NOT NULL AUTO_INCREMENT,
  `lise_tur` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`lise_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `liseler`
--

INSERT INTO `liseler` (`lise_id`, `lise_tur`) VALUES
(1, 'DUZ'),
(2, 'FEN'),
(3, 'ANADOLU'),
(4, 'SUPER'),
(5, 'TEKNİK MESLEK');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogrenciler`
--

DROP TABLE IF EXISTS `ogrenciler`;
CREATE TABLE IF NOT EXISTS `ogrenciler` (
  `ogrenci_id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `alan_id` int(11) NOT NULL,
  `universite_id` int(11) NOT NULL,
  `sonuc_id` int(11) NOT NULL,
  `lise_id` int(11) NOT NULL,
  `basari_id` int(11) NOT NULL,
  `pansiyon_id` int(11) NOT NULL,
  `kulup_id` int(11) NOT NULL,
  PRIMARY KEY (`ogrenci_id`),
  KEY `lise_id` (`lise_id`),
  KEY `universite_id` (`universite_id`),
  KEY `sonuc_id` (`sonuc_id`),
  KEY `alan_id` (`alan_id`),
  KEY `basari_id` (`basari_id`),
  KEY `kulup_id` (`kulup_id`),
  KEY `pansiyon_id` (`pansiyon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ogrenciler`
--

INSERT INTO `ogrenciler` (`ogrenci_id`, `ad`, `soyad`, `alan_id`, `universite_id`, `sonuc_id`, `lise_id`, `basari_id`, `pansiyon_id`, `kulup_id`) VALUES
(1, 'ELMAS', 'MENGÜ', 1, 1, 14, 3, 15, 1, 17),
(2, 'SERRA', 'DEMİR', 1, 12, 12, 3, 10, 1, 11),
(3, 'AYŞENUR', 'DURSUN', 2, 2, 10, 3, 9, 1, 16),
(4, 'ELİF', 'AYDIN', 3, 6, 8, 4, 9, 3, 4),
(5, 'RECEP', 'AYDOĞAN', 4, 25, 12, 3, 8, 2, 8),
(6, 'MESUT', 'ATİK', 2, 18, 17, 1, 8, 1, 5),
(7, 'OKTAY', 'VURAN', 1, 2, 5, 2, 6, 1, 7),
(8, 'ELA', 'KAYA', 3, 22, 6, 3, 10, 2, 16),
(9, 'LEVENT', 'ATAHANLI', 4, 7, 3, 3, 14, 1, 11),
(10, 'ZEYNEP', 'GÜRLER', 2, 17, 3, 1, 15, 1, 6),
(11, 'CENGİZ', 'GÜVEN', 2, 16, 4, 3, 15, 1, 15),
(12, 'ORHAN', 'SİLAY', 3, 4, 18, 1, 15, 1, 12),
(13, 'HASAN', 'TOLGA', 1, 8, 6, 2, 1, 1, 6),
(14, 'SEVGİ', 'DENİZ', 4, 19, 4, 1, 8, 3, 14),
(15, 'SEDA', 'AKMAN', 4, 20, 7, 3, 4, 2, 14),
(16, 'MERVE', 'SEVİN', 2, 16, 13, 3, 11, 1, 2),
(17, 'SİMAY', 'KEKLİK', 1, 13, 10, 2, 8, 1, 9),
(18, 'GÜLER', 'DUMAN', 1, 14, 9, 5, 4, 1, 2),
(19, 'EMİNE', 'YALÇIN', 2, 3, 11, 5, 7, 1, 10),
(20, 'ALEYNA', 'EGELİ', 1, 15, 7, 5, 4, 1, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogretim_uyesi`
--

DROP TABLE IF EXISTS `ogretim_uyesi`;
CREATE TABLE IF NOT EXISTS `ogretim_uyesi` (
  `ogretim_uyesi_id` int(11) NOT NULL AUTO_INCREMENT,
  `rektorluk_id` int(11) NOT NULL,
  `ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `universite_id` int(11) NOT NULL,
  PRIMARY KEY (`ogretim_uyesi_id`),
  KEY `rektorluk_id` (`rektorluk_id`),
  KEY `universite_id` (`universite_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ogretim_uyesi`
--

INSERT INTO `ogretim_uyesi` (`ogretim_uyesi_id`, `rektorluk_id`, `ad`, `soyad`, `universite_id`) VALUES
(1, 1, 'NEBAHAT', 'ÇEHRE', 15),
(2, 3, 'İLKNUR', 'EROĞLU', 28),
(3, 2, 'FURKAN', 'YAŞAR', 20),
(4, 3, 'ÜSAME', 'GEZGİN', 19),
(5, 4, 'TUĞBA', 'KIRCALI', 20),
(6, 1, 'HİLAL', 'ÇAVUŞ', 4),
(7, 1, 'MEHMET', 'İRFAN', 3),
(8, 1, 'EMİNE', 'YAŞAR', 18),
(9, 2, 'ÇİĞDEM', 'ASLANBAYRAK', 25),
(10, 3, 'HÜLYA', 'BAYDAR', 19),
(11, 4, 'ÇİĞDEM', 'YILMAZ', 30),
(12, 1, 'ÜMRAN', 'ÖZENÇ', 6),
(13, 3, 'BETÜL', 'YEŞİLYURT', 28),
(14, 2, 'SEDA', 'KARA', 21),
(15, 2, 'NAZLI', 'OKTAY', 20),
(16, 3, 'DİLEK', 'DEMİRCİ', 22),
(17, 3, 'MEHMET', 'EROĞLU', 28),
(18, 1, 'OSMAN', 'CAMBAZ', 1),
(19, 2, 'ERHAN', 'BOL', 27),
(20, 1, 'UMUT', 'ATALAY', 13);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogretmenler`
--

DROP TABLE IF EXISTS `ogretmenler`;
CREATE TABLE IF NOT EXISTS `ogretmenler` (
  `ogretmen_id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `alan_id` int(11) NOT NULL,
  PRIMARY KEY (`ogretmen_id`),
  KEY `alan_id` (`alan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ogretmenler`
--

INSERT INTO `ogretmenler` (`ogretmen_id`, `ad`, `soyad`, `alan_id`) VALUES
(1, 'ASYA', 'DOĞAN', 1),
(2, 'İREM ', 'KARA', 3),
(3, 'BURAK', 'ÇALIŞKAN', 1),
(4, 'TARIK', 'TOKGÖZ', 4),
(5, 'ÇETİN', 'GÜNGÖR', 3),
(6, 'AHMET ', 'TEKİN', 2),
(7, 'NACİYE', 'GİRAN', 2),
(8, 'CENGİZ', 'DALMAN', 3),
(9, 'EMRE', 'ATAMAN', 3),
(10, 'ARDA', 'EGE', 4),
(11, 'DERYA', 'BAŞ', 2),
(12, 'EZGİ', 'DİNÇER', 1),
(13, 'SERDAR', 'ŞAKŞAK', 2),
(14, 'BESTAMİ', 'ÜLKER', 2),
(15, 'BURAK ', 'AKGÜL', 4),
(16, 'ESRA', 'ŞAKRAK', 3),
(17, 'ÖMER', 'ASLANTEKİN', 3),
(18, 'ZEYNEP', 'DİZMEN', 1),
(19, 'ERAY', 'KAHRAMAN', 1),
(20, 'İSMAİL', 'KOYUN', 1),
(21, 'ZENAN', 'PARLAR', 4),
(22, 'ELA', 'ALTINDAĞ', 2),
(23, 'SERKAN', 'MUTLU', 3),
(24, 'ÖZER', 'ÜLENGİN', 3),
(25, 'ZEHRA', 'ALKAN', 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pansiyonlar`
--

DROP TABLE IF EXISTS `pansiyonlar`;
CREATE TABLE IF NOT EXISTS `pansiyonlar` (
  `pansiyon_id` int(11) NOT NULL AUTO_INCREMENT,
  `turu` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`pansiyon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `pansiyonlar`
--

INSERT INTO `pansiyonlar` (`pansiyon_id`, `turu`) VALUES
(1, 'DEVLET'),
(2, 'ÖZEL'),
(3, 'BURSLU');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `prgdilleri`
--

DROP TABLE IF EXISTS `prgdilleri`;
CREATE TABLE IF NOT EXISTS `prgdilleri` (
  `prg_dili_id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`prg_dili_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `prgdilleri`
--

INSERT INTO `prgdilleri` (`prg_dili_id`, `ad`) VALUES
(1, 'PHP'),
(2, 'PYTHON'),
(3, 'C#'),
(4, 'C'),
(5, 'SQL'),
(6, 'JAVA'),
(7, 'C++'),
(8, 'PASCAL'),
(9, 'HTML5'),
(10, 'CSS'),
(11, 'ASSEMBLY'),
(12, 'RUBY'),
(13, 'ASP.NET'),
(14, 'MATLAB'),
(15, 'SWİFT');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rektorluk`
--

DROP TABLE IF EXISTS `rektorluk`;
CREATE TABLE IF NOT EXISTS `rektorluk` (
  `rektorluk_id` int(11) NOT NULL AUTO_INCREMENT,
  `tur` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`rektorluk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `rektorluk`
--

INSERT INTO `rektorluk` (`rektorluk_id`, `tur`) VALUES
(1, 'DEVLET'),
(2, 'ÖZEL'),
(3, 'VAKIF'),
(4, 'ULUSLARARASI');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sehirler`
--

DROP TABLE IF EXISTS `sehirler`;
CREATE TABLE IF NOT EXISTS `sehirler` (
  `sehir_id` int(11) NOT NULL AUTO_INCREMENT,
  `sehir_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`sehir_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sehirler`
--

INSERT INTO `sehirler` (`sehir_id`, `sehir_ad`) VALUES
(1, 'MANİSA'),
(2, 'TRABZON'),
(3, 'İSTANBUL'),
(4, 'BALIKESİR'),
(5, 'SAKARYA'),
(6, 'KOCAELİ'),
(7, 'ÇANAKKALE'),
(8, 'ANKARA'),
(9, 'KONYA'),
(10, 'MUĞLA'),
(11, 'BURSA'),
(12, 'ANTALYA'),
(13, 'TEKİRDAĞ'),
(14, 'MERSİN'),
(15, 'ADANA'),
(16, 'KÜTAHYA'),
(17, 'ISPARTA'),
(18, 'AYDIN'),
(19, 'EDİRNE'),
(20, 'ERZURUM'),
(21, 'YALOVA'),
(22, 'HATAY');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `seneler`
--

DROP TABLE IF EXISTS `seneler`;
CREATE TABLE IF NOT EXISTS `seneler` (
  `sene_id` int(11) NOT NULL AUTO_INCREMENT,
  `ogrenci_id` int(11) NOT NULL,
  `yil_id` int(11) NOT NULL,
  PRIMARY KEY (`sene_id`),
  KEY `ogrenci_id` (`ogrenci_id`),
  KEY `yil_id` (`yil_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `seneler`
--

INSERT INTO `seneler` (`sene_id`, `ogrenci_id`, `yil_id`) VALUES
(1, 1, 8),
(2, 19, 19),
(3, 6, 7),
(4, 18, 14),
(5, 16, 11),
(6, 13, 11),
(7, 16, 11),
(8, 6, 13),
(9, 7, 7),
(10, 9, 12);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sonuclar`
--

DROP TABLE IF EXISTS `sonuclar`;
CREATE TABLE IF NOT EXISTS `sonuclar` (
  `sonuc_id` int(11) NOT NULL AUTO_INCREMENT,
  `dogru_sayisi` int(11) NOT NULL,
  `yanlis_sayisi` int(11) NOT NULL,
  PRIMARY KEY (`sonuc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sonuclar`
--

INSERT INTO `sonuclar` (`sonuc_id`, `dogru_sayisi`, `yanlis_sayisi`) VALUES
(1, 100, 55),
(2, 100, 20),
(3, 90, 30),
(4, 55, 65),
(5, 105, 15),
(6, 120, 0),
(7, 66, 54),
(8, 67, 53),
(9, 106, 14),
(10, 56, 64),
(11, 110, 10),
(12, 115, 5),
(13, 107, 13),
(14, 68, 52),
(15, 67, 53),
(16, 108, 12),
(17, 57, 63),
(18, 58, 62);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sosyallik`
--

DROP TABLE IF EXISTS `sosyallik`;
CREATE TABLE IF NOT EXISTS `sosyallik` (
  `sosyal_id` int(11) NOT NULL AUTO_INCREMENT,
  `ogrenci_id` int(11) NOT NULL,
  `hobi_id` int(11) NOT NULL,
  PRIMARY KEY (`sosyal_id`),
  KEY `hobi_id` (`hobi_id`),
  KEY `ogrenci_id` (`ogrenci_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sosyallik`
--

INSERT INTO `sosyallik` (`sosyal_id`, `ogrenci_id`, `hobi_id`) VALUES
(1, 4, 13),
(2, 19, 4),
(3, 16, 1),
(4, 9, 2),
(5, 6, 10),
(6, 20, 4),
(7, 15, 12),
(8, 3, 3),
(9, 6, 14),
(10, 12, 9);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `universiteler`
--

DROP TABLE IF EXISTS `universiteler`;
CREATE TABLE IF NOT EXISTS `universiteler` (
  `universite_id` int(11) NOT NULL AUTO_INCREMENT,
  `universite_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `sinav_id` int(11) NOT NULL,
  `rektorluk_id` int(11) NOT NULL,
  `sehir_id` int(11) NOT NULL,
  PRIMARY KEY (`universite_id`),
  KEY `sehir_id` (`sehir_id`),
  KEY `sinav_id` (`sinav_id`),
  KEY `rektorluk_id` (`rektorluk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `universiteler`
--

INSERT INTO `universiteler` (`universite_id`, `universite_ad`, `sinav_id`, `rektorluk_id`, `sehir_id`) VALUES
(1, 'CELAL BAYAR ÜNİVERSİTESİ', 2, 1, 1),
(2, 'KARADENİZ TEKNİK ÜNİVERSİTESİ', 4, 1, 2),
(3, 'ANKARA ÜNİVERSİTESİ', 6, 1, 8),
(4, 'MARMARA ÜNİVERSİTESİ', 1, 1, 3),
(5, 'İSTANBUL TEKNİK ÜNİVERSİTESİ', 7, 1, 3),
(6, 'KOCAELİ ÜNİVERSİTESİ', 2, 1, 6),
(7, '18 MART ÜNİVERSİTESİ', 8, 1, 7),
(8, 'SELÇUK ÜNİVERSİTESİ', 3, 1, 9),
(9, 'SITKI KOÇMAN ÜNİVERSİTESİ', 1, 1, 10),
(10, 'YILDIZ TEKNİK ÜNİVERSİTESİ', 1, 1, 3),
(11, 'ÇUKUROVA ÜNİVERSİTESİ', 8, 1, 15),
(12, 'ULUDAĞ ÜNİVERSİTESİ', 3, 1, 11),
(13, 'BURSA TEKNİK ÜNİVERSİTESİ', 5, 1, 11),
(14, 'KONYA TEKNİK ÜNİVERSİTESİ', 3, 1, 9),
(15, 'AKDENİZ ÜNİVERSİTESİ', 6, 1, 12),
(16, 'ATATÜRK ÜNİVERSİTESİ', 2, 1, 20),
(17, '17 EYLÜL ÜNİVERSİTESİ', 4, 1, 4),
(18, 'GAZİ ÜNİVERSİTESİ', 3, 1, 8),
(19, 'FATİH SULTAN MEHMET ÜNİVERSİTESİ', 7, 3, 3),
(20, 'BEYKENT ÜNİVERSİTESİ', 8, 2, 3),
(21, 'BİLKENT ÜNİVERSİTESİ', 5, 2, 8),
(22, 'AVRASYA ÜNİVERSİTESİ', 5, 2, 2),
(23, 'ÇAĞ ÜNİVERSİTESİ', 6, 2, 14),
(25, 'GIDA VE TARIM ÜNİVERSİTESİ', 8, 2, 9),
(26, 'TOROS ÜNİVERSİTESİ', 5, 2, 14),
(27, 'ALANYA ÜNİVERSİTESİ', 7, 2, 12),
(28, 'BEZMİ ALEM ÜNİVERSİTESİ', 8, 3, 3),
(29, 'ÇANKAYA ÜNİVERSİTESİ', 7, 3, 8),
(30, 'İHSAN DOĞRAMACI ÜNİVERSİTESİ', 3, 3, 8);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yillar`
--

DROP TABLE IF EXISTS `yillar`;
CREATE TABLE IF NOT EXISTS `yillar` (
  `yil_id` int(11) NOT NULL AUTO_INCREMENT,
  `yil` year(4) NOT NULL,
  PRIMARY KEY (`yil_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yillar`
--

INSERT INTO `yillar` (`yil_id`, `yil`) VALUES
(1, 2018),
(2, 2018),
(3, 2020),
(4, 2021),
(5, 2019),
(6, 2020),
(7, 2021),
(8, 2019),
(9, 2018),
(10, 2018),
(11, 2019),
(12, 2020),
(13, 2022),
(14, 2022),
(15, 2021),
(16, 2022),
(17, 2019),
(18, 2019),
(19, 2018),
(20, 2020),
(21, 2020);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yok`
--

DROP TABLE IF EXISTS `yok`;
CREATE TABLE IF NOT EXISTS `yok` (
  `sinav_id` int(11) NOT NULL AUTO_INCREMENT,
  `sinav_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`sinav_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yok`
--

INSERT INTO `yok` (`sinav_id`, `sinav_ad`) VALUES
(1, 'DGS'),
(2, 'ÖSYM'),
(3, 'KPSS'),
(4, 'ALES'),
(5, 'YDS'),
(6, 'YÖKDİL'),
(7, 'TUS'),
(8, 'EKYS');

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `algoritma`
--
ALTER TABLE `algoritma`
  ADD CONSTRAINT `algoritma_ibfk_1` FOREIGN KEY (`ogrenci_id`) REFERENCES `ogrenciler` (`ogrenci_id`),
  ADD CONSTRAINT `algoritma_ibfk_2` FOREIGN KEY (`prg_dili_id`) REFERENCES `prgdilleri` (`prg_dili_id`);

--
-- Tablo kısıtlamaları `arabalar`
--
ALTER TABLE `arabalar`
  ADD CONSTRAINT `arabalar_ibfk_1` FOREIGN KEY (`ogretmen_id`) REFERENCES `ogretmenler` (`ogretmen_id`);

--
-- Tablo kısıtlamaları `bilgisayarlar`
--
ALTER TABLE `bilgisayarlar`
  ADD CONSTRAINT `bilgisayarlar_ibfk_1` FOREIGN KEY (`ogrenci_id`) REFERENCES `ogrenciler` (`ogrenci_id`),
  ADD CONSTRAINT `bilgisayarlar_ibfk_2` FOREIGN KEY (`ogretim_uyesi_id`) REFERENCES `ogretim_uyesi` (`ogretim_uyesi_id`),
  ADD CONSTRAINT `bilgisayarlar_ibfk_3` FOREIGN KEY (`ogretmen_id`) REFERENCES `ogretmenler` (`ogretmen_id`);

--
-- Tablo kısıtlamaları `bolumler`
--
ALTER TABLE `bolumler`
  ADD CONSTRAINT `bolumler_ibfk_1` FOREIGN KEY (`universite_id`) REFERENCES `universiteler` (`universite_id`);

--
-- Tablo kısıtlamaları `dallar`
--
ALTER TABLE `dallar`
  ADD CONSTRAINT `dallar_ibfk_1` FOREIGN KEY (`alan_id`) REFERENCES `alanlar` (`alan_id`),
  ADD CONSTRAINT `dallar_ibfk_2` FOREIGN KEY (`bolum_id`) REFERENCES `bolumler` (`bolum_id`);

--
-- Tablo kısıtlamaları `dersler`
--
ALTER TABLE `dersler`
  ADD CONSTRAINT `dersler_ibfk_1` FOREIGN KEY (`ogrenci_id`) REFERENCES `ogrenciler` (`ogrenci_id`),
  ADD CONSTRAINT `dersler_ibfk_2` FOREIGN KEY (`ogretmen_id`) REFERENCES `ogretmenler` (`ogretmen_id`);

--
-- Tablo kısıtlamaları `lisanlar`
--
ALTER TABLE `lisanlar`
  ADD CONSTRAINT `lisanlar_ibfk_1` FOREIGN KEY (`dil_id`) REFERENCES `diller` (`dil_id`),
  ADD CONSTRAINT `lisanlar_ibfk_2` FOREIGN KEY (`ogrenci_id`) REFERENCES `ogrenciler` (`ogrenci_id`),
  ADD CONSTRAINT `lisanlar_ibfk_3` FOREIGN KEY (`ogretim_uyesi_id`) REFERENCES `ogretim_uyesi` (`ogretim_uyesi_id`),
  ADD CONSTRAINT `lisanlar_ibfk_4` FOREIGN KEY (`ogretmen_id`) REFERENCES `ogretmenler` (`ogretmen_id`);

--
-- Tablo kısıtlamaları `ogrenciler`
--
ALTER TABLE `ogrenciler`
  ADD CONSTRAINT `ogrenciler_ibfk_1` FOREIGN KEY (`lise_id`) REFERENCES `liseler` (`lise_id`),
  ADD CONSTRAINT `ogrenciler_ibfk_2` FOREIGN KEY (`universite_id`) REFERENCES `universiteler` (`universite_id`),
  ADD CONSTRAINT `ogrenciler_ibfk_3` FOREIGN KEY (`sonuc_id`) REFERENCES `sonuclar` (`sonuc_id`),
  ADD CONSTRAINT `ogrenciler_ibfk_4` FOREIGN KEY (`alan_id`) REFERENCES `alanlar` (`alan_id`),
  ADD CONSTRAINT `ogrenciler_ibfk_5` FOREIGN KEY (`basari_id`) REFERENCES `basari_yuzdesi` (`basari_id`),
  ADD CONSTRAINT `ogrenciler_ibfk_6` FOREIGN KEY (`kulup_id`) REFERENCES `kulupler` (`kulup_id`),
  ADD CONSTRAINT `ogrenciler_ibfk_7` FOREIGN KEY (`pansiyon_id`) REFERENCES `pansiyonlar` (`pansiyon_id`);

--
-- Tablo kısıtlamaları `ogretim_uyesi`
--
ALTER TABLE `ogretim_uyesi`
  ADD CONSTRAINT `ogretim_uyesi_ibfk_1` FOREIGN KEY (`rektorluk_id`) REFERENCES `rektorluk` (`rektorluk_id`),
  ADD CONSTRAINT `ogretim_uyesi_ibfk_2` FOREIGN KEY (`universite_id`) REFERENCES `universiteler` (`universite_id`);

--
-- Tablo kısıtlamaları `ogretmenler`
--
ALTER TABLE `ogretmenler`
  ADD CONSTRAINT `ogretmenler_ibfk_1` FOREIGN KEY (`alan_id`) REFERENCES `alanlar` (`alan_id`);

--
-- Tablo kısıtlamaları `seneler`
--
ALTER TABLE `seneler`
  ADD CONSTRAINT `seneler_ibfk_1` FOREIGN KEY (`ogrenci_id`) REFERENCES `ogrenciler` (`ogrenci_id`),
  ADD CONSTRAINT `seneler_ibfk_2` FOREIGN KEY (`yil_id`) REFERENCES `yillar` (`yil_id`);

--
-- Tablo kısıtlamaları `sosyallik`
--
ALTER TABLE `sosyallik`
  ADD CONSTRAINT `sosyallik_ibfk_1` FOREIGN KEY (`hobi_id`) REFERENCES `hobiler` (`hobi_id`),
  ADD CONSTRAINT `sosyallik_ibfk_2` FOREIGN KEY (`ogrenci_id`) REFERENCES `ogrenciler` (`ogrenci_id`);

--
-- Tablo kısıtlamaları `universiteler`
--
ALTER TABLE `universiteler`
  ADD CONSTRAINT `universiteler_ibfk_1` FOREIGN KEY (`sehir_id`) REFERENCES `sehirler` (`sehir_id`),
  ADD CONSTRAINT `universiteler_ibfk_2` FOREIGN KEY (`sinav_id`) REFERENCES `yok` (`sinav_id`),
  ADD CONSTRAINT `universiteler_ibfk_3` FOREIGN KEY (`rektorluk_id`) REFERENCES `rektorluk` (`rektorluk_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
