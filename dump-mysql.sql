-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (arm64)
--
-- Host: 127.0.0.1    Database: exo317
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agamas`
--

DROP TABLE IF EXISTS `agamas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agamas` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `agamas_kode_index` (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agamas`
--

LOCK TABLES `agamas` WRITE;
/*!40000 ALTER TABLE `agamas` DISABLE KEYS */;
INSERT INTO `agamas` VALUES ('3aed771a-9458-4cce-9811-8b0b50bfe462','ISLAM','Islam','2024-02-02 12:22:41','2024-02-02 12:22:41'),('6e4c117b-b057-44a3-98ab-d54d197030de','PROTESTAN','Protestan','2024-02-02 12:22:41','2024-02-02 12:22:41'),('8194f3f2-501b-420f-a496-85fded97beb0','HINDU','Hindu','2024-02-02 12:22:41','2024-02-02 12:22:41'),('b835ff17-369c-4250-a565-000a06953adf','BUDHA','Budha','2024-02-02 12:22:41','2024-02-02 12:22:41'),('dae66fe2-5785-4b44-892b-6a40c1c2e1f1','KATOLIK','Katolik','2024-02-02 12:22:41','2024-02-02 12:22:41');
/*!40000 ALTER TABLE `agamas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banksoal_adaptif`
--

DROP TABLE IF EXISTS `banksoal_adaptif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banksoal_adaptif` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matpel_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_pg` int NOT NULL,
  `deleted_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `banksoal_adaptif_matpel_id_index` (`matpel_id`),
  KEY `banksoal_adaptif_matpel_id_code_index` (`matpel_id`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banksoal_adaptif`
--

LOCK TABLES `banksoal_adaptif` WRITE;
/*!40000 ALTER TABLE `banksoal_adaptif` DISABLE KEYS */;
/*!40000 ALTER TABLE `banksoal_adaptif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banksoals`
--

DROP TABLE IF EXISTS `banksoals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banksoals` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_banksoal` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_soal` int NOT NULL COMMENT 'jumlah soal pilihan ganda',
  `jumlah_pilihan` int NOT NULL DEFAULT '4' COMMENT 'jumlah pilihan / opsi pada pilihan ganda',
  `jumlah_soal_listening` int NOT NULL DEFAULT '0' COMMENT 'jumlah soal listening',
  `jumlah_pilihan_listening` int NOT NULL DEFAULT '4' COMMENT 'jumlah opsi listening',
  `jumlah_soal_esay` int DEFAULT '0',
  `jumlah_soal_ganda_kompleks` int NOT NULL DEFAULT '0' COMMENT 'jumlah soal pilihan ganda kompleks',
  `jumlah_isian_singkat` int NOT NULL DEFAULT '0' COMMENT 'jumlah isian singkat',
  `jumlah_menjodohkan` int NOT NULL DEFAULT '0' COMMENT 'jumlah menjodohkan',
  `jumlah_mengurutkan` int NOT NULL DEFAULT '0' COMMENT 'jumlah mengurutkan',
  `jumlah_benar_salah` int NOT NULL DEFAULT '0' COMMENT 'jumlah benar-salah',
  `jumlah_setuju_tidak` int NOT NULL DEFAULT '0' COMMENT 'jumlah setuju-tidak',
  `is_locked` int NOT NULL DEFAULT '0',
  `key_lock` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lock_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matpel_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `directory_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `banksoals_matpel_id_foreign` (`matpel_id`),
  KEY `banksoals_author_foreign` (`author`),
  KEY `banksoals_directory_id_foreign` (`directory_id`),
  KEY `banksoals_kode_banksoal_matpel_id_author_directory_id_index` (`kode_banksoal`,`matpel_id`,`author`,`directory_id`),
  CONSTRAINT `banksoals_author_foreign` FOREIGN KEY (`author`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `banksoals_directory_id_foreign` FOREIGN KEY (`directory_id`) REFERENCES `directories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `banksoals_matpel_id_foreign` FOREIGN KEY (`matpel_id`) REFERENCES `matpels` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banksoals`
--

LOCK TABLES `banksoals` WRITE;
/*!40000 ALTER TABLE `banksoals` DISABLE KEYS */;
/*!40000 ALTER TABLE `banksoals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directories`
--

DROP TABLE IF EXISTS `directories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `directories` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `directories_slug_index` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directories`
--

LOCK TABLES `directories` WRITE;
/*!40000 ALTER TABLE `directories` DISABLE KEYS */;
/*!40000 ALTER TABLE `directories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_ujians`
--

DROP TABLE IF EXISTS `event_ujians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_ujians` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_ujians`
--

LOCK TABLES `event_ujians` WRITE;
/*!40000 ALTER TABLE `event_ujians` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_ujians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exo_backups`
--

DROP TABLE IF EXISTS `exo_backups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exo_backups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `generated_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bak_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BACKUP',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SUCCESS',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exo_backups`
--

LOCK TABLES `exo_backups` WRITE;
/*!40000 ALTER TABLE `exo_backups` DISABLE KEYS */;
/*!40000 ALTER TABLE `exo_backups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature_infos`
--

DROP TABLE IF EXISTS `feature_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feature_infos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `feature_infos_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature_infos`
--

LOCK TABLES `feature_infos` WRITE;
/*!40000 ALTER TABLE `feature_infos` DISABLE KEYS */;
INSERT INTO `feature_infos` VALUES (1,'form_setting_ujian_event','v1','<p>Biasanya kita mengadakan ujian</p><ul> <li>UH (Ulangan Harian)</li><li>UTS (Ulangan Tengah Semester)</li></ul> <p>inilah kita sebut &#39;event&#39; <br/><br/> Bila kolom ini diisi, ujian akan menginduk kepada event yang kita buat pada menu <u>ujian </u>&gt; <u>event ujian</u><br/><br/> Kelebihan menggunakan event adalah</p><ol> <li>Ubah setting sesi siswa tiap-tiap event sesuai kebutuhan.</li><li>Jadwal dalam kartu ujian siswa</li><li>Absensi</li><li>Berita Acara</li><li>dll</li></ol> <p>Pada ujian yang menginduk kepada event, sesi ujian siswa harus di setting pada menu event. Sesi pada event dapat berbeda dengan sesi default<br/> Kosongkan kolom ini sehingga sesi tetap menggunakan default<br/> <br/> ExtraordinaryCBT</p>',NULL,NULL),(2,'page_peserta_tabel','v1','<p><strong>Manage peserta ujian.</strong></p><p>Disini kamu bisa melihat data peserta ujian, yang mana mereka adalah orang-orang yang akan melakukan ujian bisa siswa/umum.</p><p>Data yang kamu lihat disini adalah data rahasia karena menyangkut dengan informasi login dan password yang digunakan untuk mengerjakan ujian.</p><p>Untuk penginputan data peserta anda bisa menggunakan 2 opsi:</p><ol><li>Menggunakan form manual</li><li>Menggunakan file excel</li></ol><p>Kami sangat menyarankan untuk menggunakan file excel karena dapat mempermudah anda dalam penginputan.</p><p>Pada halaman ini juga kamu dapat menghapus data peserta ujian namun harus diingat bahwa <strong>ketika anda menghapus peserta</strong> maka semua data yang terkait dengan peserta akan ikut <strong>terhapus</strong> termasuk juga data nilai dan analisa.</p><p>&nbsp;</p><p>Extraordinary CBT&nbsp;</p>',NULL,NULL),(3,'page_grup_tabel','v1','<p><strong>Manage grup</strong></p><p>Pada menu ini berisi grup pada ujian.</p><p>Apa kegunaan grup?</p><p>Grup akan digunakan untuk mengelompokkan peserta ujian. yang mana ini akan berguna pada penjadwalan dan reporting.</p><p>Pada grup terdapat 2 tipe yaitu parent dan children.</p><p>Parent adalah grup yang memiliki parent \"none\" atau kosong. sedangkan Child adalah grup yang memiliki parent selain \"none\".</p><p>Contoh penggunakan grup.</p><ul><li><strong>Kelas 7</strong> parent -&gt; \'none\'</li><li><strong>Kelas 7A</strong> parent -&gt; \'Kelas 7\'</li><li><strong>Kelas 7B</strong> parent -&gt; Kelas 7\'</li><li><strong>Kelas 7C</strong> parent -&gt; \'Kelas 7\'</li></ul><p>&nbsp;</p><ul><li><strong>Kelas 8</strong> parent -&gt; \'none\'</li><li><strong>Kelas 8A</strong> parent -&gt; \'Kelas 8\'</li></ul><p>&nbsp;</p><p>Pada grup ini juga anda bisa menambahkan anggota, perlu diingat sebaiknya anda menambahkan anggota <strong>hanya&nbsp;</strong>pada child bila kelas tersebut memiliki child. pada contoh diatas anda sebaiknya menambahkan grup hanya pada 7A, 7B, 7C, 8A tidak pada grup parent.</p><p>Jangan pernah menghapus grup bila grup ini telah atau sedang digunakan untuk ujian karena bisa menyebabkan gagal sistem pada saat scanning grup di jadwal.</p><p>&nbsp;</p><p>Extraordinary CBT</p>',NULL,NULL),(4,'page_jurusan_tabel','v1','<p><strong>Manage Jurusan</strong></p><p>Pada halaman ini kamu dapat melihat data jurusan dalam bentuk tabel.</p><p>Jurusan berguna untuk pengelompokan peserta ujian pada jadwal dan reporting. Jurusan memiliki scope lebih besar dan lebih luas dari <span style=\"text-decoration: underline;\">grup.</span></p><p>Kode jurusan bisa anda isi dengan unique atau biarkan sistem mengenerate otomatis.</p><p>Kode jurusan akan digunakan untuk import data peserta ujian.</p><p>Perlu diingat dan selalu diingat bahwa pada dasarnya kami sangat tidak menyarankan untuk menghapus data jurusan / mengubah kode jurusan ketika sudah dibuat.&nbsp;</p><p>Sekali kamu menghapus data ujian maka semua data yang terkait dengan jurusan ini akan dihapus termasuk peserta dan saat peserta dihapus maka akan menghapus yang lainnya efek ini akan menjadi domino.</p><p>&nbsp;</p><p>Extraordinary CBT</p>',NULL,NULL),(5,'page_matpel_tabel','v1','<p><strong>Manage Matpel A.K.A Mata Pelajaran</strong></p><p>Pada halaman ini kamu dapat melihat data mata pelajaran.</p><p>Mata pelajaran adalah suatu grup dalam soal.</p><p>Terdapat 3 matpel yang dapat kamu tentukan sesuai dengan kebutuhan.</p><ul><li>Matpel UMUM</li><li>Matpel Agama</li><li>Matpel Khusus</li></ul><p>Matpel umum digunakan dan akan dipakai oleh seluruh peserta didik tanpa terkecuali.</p><p>Matpel agama digunakan oleh peserta ujian dengan agama yang ditentukan.</p><p>Matpel khusus digunakan oleh peserta ujian dengan jurusan yang ditentukan. matpel khusus bisa ditambahkan lebih dari 1 jurusan.</p><p>Penggunaan matpel khusus bisa dicontohkan sebagai berikut:</p><p>Nama matpel: Matematika Teknik</p><p>Jurusan: Teknik Survei dan Pemetaan, Geomatika, Teknik Gambar Bangunan</p><p>&nbsp;</p><p>Pada matpel juga anda harus mengisi pengoreksi yang akan memberikan penilaian pada tipe-tipe soal yang berhubungan dengan penilaian manual. Pengoreksi dapat berisi lebih dari 1.</p>',NULL,NULL),(6,'page_user_tabel','v1','<p><strong>Manage user</strong></p><p>Pada halaman ini kamu dapat melihat data user.</p><p>User dapat diinput menggunakan cara</p><ul><li>Form manual</li><li>Import data excel</li></ul><p>Kami sangat menyarankan untuk membuat user menggunakan excel untuk kemudahan.</p><p>User dapat memiliki akses untuk melakukan penginputan soal dan bisa ditambahkan sebagai tim pengoreksi soal pada data matpel.</p><p>&nbsp;</p><p>Extraordinary CBT</p>',NULL,NULL),(7,'page_banksoal_tabel','v1','<p><strong>Manage Banksoal</strong></p><p>Pada halaman ini kamu dapat melihat semua banksoal, kalau kamu adalah user standard maka kamu hanya dapat melihat banksoal yang dibuat oleh kamu sendiri.</p><p>Banksoal adalah cara aplikasi mengelompokkan soal-soal.</p><p>Kamu dapat melakukan edit, hapus, dan juga menghapus banksoal.&nbsp;</p><p>Kami sangat menyarankan untuk mengunci banksoal bila telah selesai melakukan input soal, dengan begitu banksoal anda tidak dapat dilihat, diduplikat apalagi dihapus oleh orang lain termasuk oleh administrator.&nbsp;</p><p>Tetapi kamu harus mengingat password kunci banksoal karena sekali anda lupa, banksoal ini tidak akan terbuka selamanya. tidak ada mekanisme pada aplikasi untuk membuka kunci.</p><p>Banksoal yang dikunci masih bisa digunakan untuk ujian siswa. jadi kamu tidak perlu membuka kunci bila banksoal akan digunakan untuk ujian.</p><p>Kami sangat tidak menyarankan untuk mengedit apalagi menghapus banksoal saat setelah/sedang dipakai untuk ujian pada jadwal. Kamu dapat menggunakan fitur duplikat.</p><p>&nbsp;</p><p>Extraordinary CBT</p>',NULL,NULL),(8,'page_soal_tabel','v1','<p><strong>Manage soal</strong></p><p>Pada halaman ini kamu dapat melihat data soal yang berada didalam banksoal.</p><p>Soal yang kamu lihat adalah soal yang berurut berdasarkan waktu kamu membuat soal.&nbsp;</p><p>Kamu dapat melihat soal dan opsi pada tabel dengan klik button detail.</p><p>&nbsp;</p><p>Terdapat 3 cara input soal</p><ul><li>Input form manual</li><li>Import file .docx</li><li>Paste text</li></ul><p>Kami sangat menyarankan untuk menggunakan input form untuk hasil yang lebih baik dan komplek, gunakan import file bila dirasa soal itu berisi text sederhana.</p><p>Kami tidak menyarankan anda secara keras untuk mengedit / menekan tombol update meskipun kamu tidak melakukan update. Hal tersebut dapat menyebabkan gagal scanning soal pada analisa dan ujian.</p><p>&nbsp;</p><p>Extraordinary CBT</p>',NULL,NULL),(9,'page_soal_template_tabel','v1','<p><strong>Paste soal</strong></p><p>Pada halaman ini kamu dapat membuat soal dengan paste soal pada input form yang disediakan.&nbsp;</p><p>Kamu harus menggunakan format yang telah ada. Hanya ada 2 tipe yang dapat diinputkan pada halaman ini yaitu Pilihan Ganda dan Esay.</p><p>Pastikan soal yang kamu \"paste\" pada input form sesuai dengan Tipe soal yang dipilih.</p><p>&nbsp;</p><p>Extraordinary CBT&nbsp;</p>',NULL,NULL),(10,'page_soal_doc_tabel','v1','<p><strong>Import soal</strong></p><p>Pada halaman ini kamu dapat membuat soal dengan import soal .docx pada form yang disediakan.</p><p>Kami menyediakan 2 opsi template yang kamu bisa pakai</p><ul><li>Format standard - format-1</li><li>Format table - format-2</li></ul><p>&nbsp;</p><p>Pastikan kamu telah memilih tipe soal yang sesuai dengan yang anda akan import.</p><p>&nbsp;</p><p>Extraordinary CBT</p>',NULL,NULL),(11,'page_status_ujian_table','v1','<p><strong>Status ujian</strong></p><p>Pada halaman ini kamu dapat melihat daftar ujian yang dilaksanakan. jadwal yang ditampilkan pada halaman ini adalah jadwal ujian yang sedang aktif.</p><p>Pada halaman ini juga ditampilkan token yang bisa kamu release bila belum aktif.</p><p>Setiap record jadwal dapat diganti sesia yang aktif dengan merubah dropdown lalu klik simpan.</p><p>&nbsp;</p><p>Extraordinary CBT</p>',NULL,NULL),(12,'page_status_peserta_table','v1','<p><strong>Status peserta</strong></p><p>Pada halaman ini kamu dapat melihat peserta ujian yang masuk kedalam ujian.&nbsp;</p><p>Kamu dapat melakukan reset dan force close pada tiap peserta. Force close hanya berlaku jika peserta belum menyelesaikan ujiannya.</p><p>Reset ujian akan menghapus nilai dan semua jawaban peserta.</p><p>Bila kamu mengaktifkan socket, kamu dimungkinkan untuk melihat status koneksi peserta.</p><p>Waktu pengerjaan peserta dimunginkan untuk ditambah bila dirasa mengalami kendala, penambahan waktu tidak diperbolehkan untuk melebihi waktu saat ini. perkirakan penambahan waktu dengan waktu idle peserta.</p><p>Contoh kasus: Seandainya peserta menunggu 10 menit untuk perbaikan atau pindah komputer, maka beri tambahan waktu 10 menit bila kamu menambah 15 menit sistem akan menolak request tersebut. <br/><br/>Peserta trouble pukul 09:00, trouble fix pukul 09:10, beri waktu tambahan 10 menit.</p><p>&nbsp;</p><p>Extraordinary CBT</p>',NULL,NULL);
/*!40000 ALTER TABLE `feature_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `directory_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dirname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exstension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_members`
--

DROP TABLE IF EXISTS `group_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_members` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group_members_student_id_foreign` (`student_id`),
  KEY `group_members_group_id_student_id_index` (`group_id`,`student_id`),
  CONSTRAINT `group_members_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `group_members_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `pesertas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_members`
--

LOCK TABLES `group_members` WRITE;
/*!40000 ALTER TABLE `group_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `groups_parent_id_name_index` (`parent_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hasil_ujians`
--

DROP TABLE IF EXISTS `hasil_ujians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hasil_ujians` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ujian_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banksoal_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peserta_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jadwal_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_salah` int NOT NULL DEFAULT '0',
  `jumlah_benar` int NOT NULL DEFAULT '0',
  `jumlah_benar_complek` int NOT NULL DEFAULT '0',
  `jumlah_salah_complek` int NOT NULL DEFAULT '0',
  `jumlah_benar_listening` int NOT NULL DEFAULT '0',
  `jumlah_salah_listening` int NOT NULL DEFAULT '0',
  `jumlah_benar_isian_singkat` int NOT NULL DEFAULT '0',
  `jumlah_salah_isian_singkat` int NOT NULL DEFAULT '0',
  `jumlah_benar_menjodohkan` int NOT NULL DEFAULT '0',
  `jumlah_salah_menjodohkan` int NOT NULL DEFAULT '0',
  `jumlah_benar_mengurutkan` int NOT NULL DEFAULT '0',
  `jumlah_salah_mengurutkan` int NOT NULL DEFAULT '0',
  `jumlah_benar_benar_salah` int NOT NULL DEFAULT '0',
  `jumlah_salah_benar_salah` int NOT NULL DEFAULT '0',
  `point_esay` double(8,2) NOT NULL,
  `point_setuju_tidak` double(8,2) NOT NULL,
  `tidak_diisi` int NOT NULL,
  `hasil` double(8,2) NOT NULL,
  `deleted_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hasil_ujians_peserta_id_foreign` (`peserta_id`),
  KEY `hasil_ujians_jadwal_id_foreign` (`jadwal_id`),
  KEY `hasil_ujians_banksoal_id_peserta_id_jadwal_id_ujian_id_index` (`banksoal_id`,`peserta_id`,`jadwal_id`,`ujian_id`),
  CONSTRAINT `hasil_ujians_banksoal_id_foreign` FOREIGN KEY (`banksoal_id`) REFERENCES `banksoals` (`id`) ON DELETE CASCADE,
  CONSTRAINT `hasil_ujians_jadwal_id_foreign` FOREIGN KEY (`jadwal_id`) REFERENCES `jadwals` (`id`) ON DELETE CASCADE,
  CONSTRAINT `hasil_ujians_peserta_id_foreign` FOREIGN KEY (`peserta_id`) REFERENCES `pesertas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hasil_ujians`
--

LOCK TABLES `hasil_ujians` WRITE;
/*!40000 ALTER TABLE `hasil_ujians` DISABLE KEYS */;
/*!40000 ALTER TABLE `hasil_ujians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jadwals`
--

DROP TABLE IF EXISTS `jadwals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jadwals` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banksoal_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_ids` text COLLATE utf8mb4_unicode_ci,
  `alias` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `mulai` time NOT NULL,
  `lama` int NOT NULL,
  `min_test` int NOT NULL DEFAULT '0',
  `status_ujian` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sesi` int NOT NULL DEFAULT '1',
  `setting` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mulai_sesi` text COLLATE utf8mb4_unicode_ci,
  `view_result` int NOT NULL DEFAULT '0',
  `deleted_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jadwals_tanggal_status_ujian_event_id_index` (`tanggal`,`status_ujian`,`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jadwals`
--

LOCK TABLES `jadwals` WRITE;
/*!40000 ALTER TABLE `jadwals` DISABLE KEYS */;
/*!40000 ALTER TABLE `jadwals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jawaban_pesertas`
--

DROP TABLE IF EXISTS `jawaban_pesertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jawaban_pesertas` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banksoal_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soal_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peserta_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jadwal_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `jawab_complex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '[]',
  `menjodohkan` text COLLATE utf8mb4_unicode_ci,
  `mengurutkan` text COLLATE utf8mb4_unicode_ci,
  `benar_salah` text COLLATE utf8mb4_unicode_ci,
  `setuju_tidak` longtext COLLATE utf8mb4_unicode_ci,
  `esay` longtext COLLATE utf8mb4_unicode_ci,
  `ragu_ragu` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `iscorrect` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `answered` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jawaban_pesertas_soal_id_foreign` (`soal_id`),
  KEY `jawaban_pesertas_peserta_id_foreign` (`peserta_id`),
  KEY `jawaban_pesertas_jadwal_id_foreign` (`jadwal_id`),
  KEY `jawaban_pesertas_banksoal_id_soal_id_peserta_id_jadwal_id_index` (`banksoal_id`,`soal_id`,`peserta_id`,`jadwal_id`),
  CONSTRAINT `jawaban_pesertas_banksoal_id_foreign` FOREIGN KEY (`banksoal_id`) REFERENCES `banksoals` (`id`) ON DELETE CASCADE,
  CONSTRAINT `jawaban_pesertas_jadwal_id_foreign` FOREIGN KEY (`jadwal_id`) REFERENCES `jadwals` (`id`) ON DELETE CASCADE,
  CONSTRAINT `jawaban_pesertas_peserta_id_foreign` FOREIGN KEY (`peserta_id`) REFERENCES `pesertas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `jawaban_pesertas_soal_id_foreign` FOREIGN KEY (`soal_id`) REFERENCES `soals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jawaban_pesertas`
--

LOCK TABLES `jawaban_pesertas` WRITE;
/*!40000 ALTER TABLE `jawaban_pesertas` DISABLE KEYS */;
/*!40000 ALTER TABLE `jawaban_pesertas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jawaban_soals`
--

DROP TABLE IF EXISTS `jawaban_soals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jawaban_soals` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soal_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_jawaban` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `label_mark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jawaban_soals_soal_id_correct_index` (`soal_id`,`correct`),
  CONSTRAINT `jawaban_soals_soal_id_foreign` FOREIGN KEY (`soal_id`) REFERENCES `soals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jawaban_soals`
--

LOCK TABLES `jawaban_soals` WRITE;
/*!40000 ALTER TABLE `jawaban_soals` DISABLE KEYS */;
/*!40000 ALTER TABLE `jawaban_soals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jurusans`
--

DROP TABLE IF EXISTS `jurusans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jurusans` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kode` (`kode`),
  KEY `jurusans_kode_index` (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurusans`
--

LOCK TABLES `jurusans` WRITE;
/*!40000 ALTER TABLE `jurusans` DISABLE KEYS */;
INSERT INTO `jurusans` VALUES ('f02cbf88-e5df-47b1-89b0-325a8d0c0a68','1945','UMUM (tanpa-jurusan)',NULL,NULL);
/*!40000 ALTER TABLE `jurusans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matpels`
--

DROP TABLE IF EXISTS `matpels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matpels` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_mapel` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan_id` text COLLATE utf8mb4_unicode_ci,
  `agama_id` text COLLATE utf8mb4_unicode_ci,
  `correctors` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `matpels_kode_mapel_index` (`kode_mapel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matpels`
--

LOCK TABLES `matpels` WRITE;
/*!40000 ALTER TABLE `matpels` DISABLE KEYS */;
/*!40000 ALTER TABLE `matpels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuses`
--

DROP TABLE IF EXISTS `menuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menuses` (
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuses`
--

LOCK TABLES `menuses` WRITE;
/*!40000 ALTER TABLE `menuses` DISABLE KEYS */;
INSERT INTO `menuses` VALUES ('00001A','Edit instansi'),('00002A','Master peserta'),('00003A','Master group-peserta'),('00004A','Master jurusan'),('00005A','Master matpel'),('00006A','Master user'),('00007A','Master agama'),('00008A','Banksoal'),('00009A','Event ujian'),('00010A','Jadwal ujian'),('00011A','File media'),('00012A','Status ujian'),('00013A','Status peserta'),('00014A','Status login peserta'),('00015A','Blocked peserta'),('00016A','Koreksi esay'),('00017A','Koreksi argumen'),('00018A','Capaian peserta'),('00019A','Kesulitan soal'),('00020A','Hasil ujian'),('00021A','Ledger peserta'),('00022A','Setting'),('00023A','Backup & restore');
/*!40000 ALTER TABLE `menuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2019_08_19_000000_create_failed_jobs_table',1),(3,'2019_12_14_000001_create_personal_access_tokens_table',1),(4,'2020_07_10_011018_create_jurusans_table',1),(5,'2020_07_10_011145_create_matpels_table',1),(6,'2020_07_10_011228_create_event_ujians_table',1),(7,'2020_07_10_011304_create_pesertas_table',1),(8,'2020_07_10_011355_create_directories_table',1),(9,'2020_07_10_011431_create_banksoals_table',1),(10,'2020_07_10_011535_create_files_table',1),(11,'2020_07_10_011609_create_jadwals_table',1),(12,'2020_07_10_011707_create_hasil_ujians_table',1),(13,'2020_07_10_011745_create_soals_table',1),(14,'2020_07_10_011826_create_jawaban_soals_table',1),(15,'2020_07_10_011852_create_jawaban_pesertas_table',1),(16,'2020_07_10_011939_create_jawaban_esays_table',1),(17,'2020_07_10_012014_create_agamas_table',1),(18,'2020_07_10_012151_create_settings_table',1),(19,'2020_07_11_112718_create_siswa_ujians_table',1),(20,'2020_07_15_120620_create_ujians_table',1),(21,'2020_07_15_145941_create_tokens_table',1),(22,'2020_10_18_102712_create_sesi_schedules_table',1),(23,'2021_03_09_184343_create_groups_table',1),(24,'2021_03_09_184914_create_group_members_table',1),(25,'2021_05_12_093907_create_feature_infos_table',1),(26,'2021_07_17_094457_create_banksoal_adaptif_table',1),(27,'2021_10_11_102624_create_penilaian_argument_table',1),(28,'2022_07_26_080234_create_exo_backups_table',1),(29,'2023_09_01_210528_add_label_mark_to_jawaban_soals_table',1),(30,'2024_01_28_072638_create_menuses_table',1),(31,'2024_01_28_072747_create_role_menuses_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penilaian_argument`
--

DROP TABLE IF EXISTS `penilaian_argument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penilaian_argument` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banksoal_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peserta_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawab_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `corrected_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` double(8,2) NOT NULL,
  `deleted_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `penilaian_argument_peserta_id_foreign` (`peserta_id`),
  KEY `penilaian_argument_jawab_id_foreign` (`jawab_id`),
  KEY `penilaian_argument_corrected_by_foreign` (`corrected_by`),
  KEY `penilaian_argument_banksoal_id_peserta_id_jawab_id_index` (`banksoal_id`,`peserta_id`,`jawab_id`),
  CONSTRAINT `penilaian_argument_banksoal_id_foreign` FOREIGN KEY (`banksoal_id`) REFERENCES `banksoals` (`id`) ON DELETE CASCADE,
  CONSTRAINT `penilaian_argument_corrected_by_foreign` FOREIGN KEY (`corrected_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `penilaian_argument_jawab_id_foreign` FOREIGN KEY (`jawab_id`) REFERENCES `jawaban_pesertas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `penilaian_argument_peserta_id_foreign` FOREIGN KEY (`peserta_id`) REFERENCES `pesertas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penilaian_argument`
--

LOCK TABLES `penilaian_argument` WRITE;
/*!40000 ALTER TABLE `penilaian_argument` DISABLE KEYS */;
/*!40000 ALTER TABLE `penilaian_argument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penilaian_esay`
--

DROP TABLE IF EXISTS `penilaian_esay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penilaian_esay` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banksoal_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peserta_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawab_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `corrected_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` double(8,2) NOT NULL,
  `deleted_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `penilaian_esay_peserta_id_foreign` (`peserta_id`),
  KEY `penilaian_esay_jawab_id_foreign` (`jawab_id`),
  KEY `penilaian_esay_corrected_by_foreign` (`corrected_by`),
  KEY `penilaian_esay_indexees0` (`banksoal_id`,`peserta_id`,`jawab_id`,`corrected_by`),
  CONSTRAINT `penilaian_esay_banksoal_id_foreign` FOREIGN KEY (`banksoal_id`) REFERENCES `banksoals` (`id`) ON DELETE CASCADE,
  CONSTRAINT `penilaian_esay_corrected_by_foreign` FOREIGN KEY (`corrected_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `penilaian_esay_jawab_id_foreign` FOREIGN KEY (`jawab_id`) REFERENCES `jawaban_pesertas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `penilaian_esay_peserta_id_foreign` FOREIGN KEY (`peserta_id`) REFERENCES `pesertas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penilaian_esay`
--

LOCK TABLES `penilaian_esay` WRITE;
/*!40000 ALTER TABLE `penilaian_esay` DISABLE KEYS */;
/*!40000 ALTER TABLE `penilaian_esay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesertas`
--

DROP TABLE IF EXISTS `pesertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pesertas` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi` int NOT NULL,
  `no_ujian` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `block_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `antiblock` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pesertas_no_ujian_unique` (`no_ujian`),
  KEY `pesertas_no_ujian_api_token_index` (`no_ujian`,`api_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesertas`
--

LOCK TABLES `pesertas` WRITE;
/*!40000 ALTER TABLE `pesertas` DISABLE KEYS */;
/*!40000 ALTER TABLE `pesertas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_menuses`
--

DROP TABLE IF EXISTS `role_menuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_menuses` (
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`role`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_menuses`
--

LOCK TABLES `role_menuses` WRITE;
/*!40000 ALTER TABLE `role_menuses` DISABLE KEYS */;
INSERT INTO `role_menuses` VALUES ('admin','00001A'),('admin','00002A'),('admin','00003A'),('admin','00004A'),('admin','00005A'),('admin','00006A'),('admin','00007A'),('admin','00008A'),('admin','00009A'),('admin','00010A'),('admin','00011A'),('admin','00012A'),('admin','00013A'),('admin','00014A'),('admin','00015A'),('admin','00016A'),('admin','00017A'),('admin','00018A'),('admin','00019A'),('admin','00020A'),('admin','00021A'),('admin','00022A'),('admin','00023A'),('guru','00008A'),('guru','00009A'),('guru','00010A'),('guru','00011A'),('guru','00012A'),('guru','00013A'),('guru','00014A'),('guru','00016A'),('guru','00017A'),('guru','00018A'),('guru','00019A'),('guru','00020A'),('operator','00009A'),('operator','00010A'),('operator','00011A'),('operator','00012A'),('operator','00013A'),('operator','00014A'),('operator','00015A');
/*!40000 ALTER TABLE `role_menuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sesi_schedules`
--

DROP TABLE IF EXISTS `sesi_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sesi_schedules` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jadwal_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi` int NOT NULL DEFAULT '1',
  `peserta_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sesi_schedules_jadwal_id_sesi_index` (`jadwal_id`,`sesi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sesi_schedules`
--

LOCK TABLES `sesi_schedules` WRITE;
/*!40000 ALTER TABLE `sesi_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `sesi_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `settings_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('770adee3-2f03-4ab5-a53b-1f6feea32895','user-agent-whitelist','general','\"*\"',NULL,NULL,'2024-02-02 12:22:41','2024-02-02 12:22:41'),('84ad9d03-3636-40c6-9ac8-d5fd314408ff','token','general','900',NULL,NULL,'2024-02-02 12:22:41','2024-02-02 12:22:41'),('86efd3a6-e683-46b3-b739-2c624e40da2e','ujian','general','{\"reset\":false}',NULL,NULL,'2024-02-02 12:22:41','2024-02-02 12:22:41'),('f47c6b35-6e80-4678-a2c8-b65c229caee2','set_sekolah','sekolah','{\"logo\":\"\",\"nama_sekolah\":\"\",\"email\":\"\",\"alamat\":\"\",\"kepala_sekolah\":\"\",\"nip_kepsek\":\"\",\"tingkat\":\"SMK-SMA\"}',NULL,NULL,'2024-02-02 12:22:41','2024-02-02 12:22:41');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siswa_ujians`
--

DROP TABLE IF EXISTS `siswa_ujians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `siswa_ujians` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peserta_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jadwal_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mulai_ujian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mulai_ujian_shadow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selesai_ujian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uploaded` int NOT NULL DEFAULT '0',
  `sisa_waktu` int NOT NULL,
  `status_ujian` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_ujian_counter` int NOT NULL DEFAULT '0',
  `deleted_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `siswa_ujians_jadwal_id_foreign` (`jadwal_id`),
  KEY `siswa_ujians_peserta_id_jadwal_id_status_ujian_index` (`peserta_id`,`jadwal_id`,`status_ujian`),
  CONSTRAINT `siswa_ujians_jadwal_id_foreign` FOREIGN KEY (`jadwal_id`) REFERENCES `jadwals` (`id`) ON DELETE CASCADE,
  CONSTRAINT `siswa_ujians_peserta_id_foreign` FOREIGN KEY (`peserta_id`) REFERENCES `pesertas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siswa_ujians`
--

LOCK TABLES `siswa_ujians` WRITE;
/*!40000 ALTER TABLE `siswa_ujians` DISABLE KEYS */;
/*!40000 ALTER TABLE `siswa_ujians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soals`
--

DROP TABLE IF EXISTS `soals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soals` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banksoal_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe_soal` int NOT NULL COMMENT '1: Pilihan Ganda | 2: Esay | 3: Listening',
  `case_sensitive` int NOT NULL DEFAULT '1',
  `pertanyaan` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rujukan` longtext COLLATE utf8mb4_unicode_ci,
  `audio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `analys` longtext COLLATE utf8mb4_unicode_ci,
  `layout` int NOT NULL DEFAULT '1',
  `deleted_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `soals_banksoal_id_tipe_soal_index` (`banksoal_id`,`tipe_soal`),
  CONSTRAINT `soals_banksoal_id_foreign` FOREIGN KEY (`banksoal_id`) REFERENCES `banksoals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soals`
--

LOCK TABLES `soals` WRITE;
/*!40000 ALTER TABLE `soals` DISABLE KEYS */;
/*!40000 ALTER TABLE `soals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tokens` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES ('ea9db653-9ce8-4204-91ca-ac502c013255','ZYENG','0','2024-02-02 12:22:41','2024-02-02 12:22:41');
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ujians`
--

DROP TABLE IF EXISTS `ujians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ujians` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jadwal_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('aktif','selesai') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  `deleted_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ujians_jadwal_id_status_index` (`jadwal_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ujians`
--

LOCK TABLES `ujians` WRITE;
/*!40000 ALTER TABLE `ujians` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'guru',
  `deleted_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_email_role_index` (`email`,`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('2d121448-480c-4c3c-a206-ddc5f08ab0c9','Administrator','admin@shellrean.com',NULL,'$2y$10$U/lGGtDdu0b1OUKOE4Lfsu7tQm/.7f5hlYtVE3Q2/0ZLkK7eyf1S6','admin',NULL,NULL,'2024-02-02 12:22:41','2024-02-02 12:22:41');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-02 19:24:06
