-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2019 at 10:12 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sister_smkn1`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_tunggakan`
--

CREATE TABLE `detail_tunggakan` (
  `bulan` varchar(10) NOT NULL,
  `tunggakan_id` varchar(10) NOT NULL,
  `total` int(11) NOT NULL,
  `sisa` int(11) NOT NULL,
  `keterangan` enum('Lunas','Belum Lunas') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_tunggakan`
--

INSERT INTO `detail_tunggakan` (`bulan`, `tunggakan_id`, `total`, `sisa`, `keterangan`) VALUES
('', 'TG-42', 500000, 250000, 'Belum Lunas'),
('', 'TG-41', 2100000, 2100000, 'Belum Lunas'),
('Juli', 'TG-29', 125000, 0, 'Belum Lunas'),
('Agustus', 'TG-30', 125000, 0, 'Belum Lunas'),
('September', 'TG-31', 125000, 0, 'Belum Lunas'),
('Oktober', 'TG-32', 125000, 0, 'Belum Lunas'),
('November', 'TG-33', 125000, 0, 'Belum Lunas'),
('Desember', 'TG-34', 125000, 0, 'Belum Lunas'),
('Januari', 'TG-35', 125000, 0, 'Belum Lunas'),
('Februari', 'TG-36', 125000, 0, 'Belum Lunas'),
('Maret', 'TG-37', 125000, 0, 'Belum Lunas'),
('April', 'TG-38', 125000, 0, 'Belum Lunas'),
('Mei', 'TG-39', 125000, 0, 'Belum Lunas'),
('Juni', 'TG-40', 125000, 0, 'Belum Lunas'),
('', 'TG-28', 500000, 500000, 'Belum Lunas'),
('', 'TG-27', 2100000, 2100000, 'Belum Lunas'),
('Juli', 'TG-15', 125000, 0, 'Lunas'),
('Agustus', 'TG-16', 125000, 0, 'Belum Lunas'),
('September', 'TG-17', 125000, 0, 'Belum Lunas'),
('Oktober', 'TG-18', 125000, 0, 'Belum Lunas'),
('November', 'TG-19', 125000, 0, 'Belum Lunas'),
('Desember', 'TG-20', 125000, 0, 'Belum Lunas'),
('Januari', 'TG-21', 125000, 0, 'Belum Lunas'),
('Februari', 'TG-22', 125000, 0, 'Belum Lunas'),
('Maret', 'TG-23', 125000, 0, 'Belum Lunas'),
('April', 'TG-24', 125000, 0, 'Belum Lunas'),
('Mei', 'TG-25', 125000, 0, 'Belum Lunas'),
('Juni', 'TG-26', 125000, 0, 'Belum Lunas'),
('', 'TG-14', 500000, 500000, 'Belum Lunas'),
('', 'TG-13', 2100000, 2000000, 'Belum Lunas'),
('Juli', 'TG-1', 125000, 0, 'Belum Lunas'),
('Agustus', 'TG-2', 125000, 0, 'Belum Lunas'),
('September', 'TG-3', 125000, 0, 'Belum Lunas'),
('Oktober', 'TG-4', 125000, 0, 'Belum Lunas'),
('November', 'TG-5', 125000, 0, 'Belum Lunas'),
('Desember', 'TG-6', 125000, 0, 'Belum Lunas'),
('Januari', 'TG-7', 125000, 0, 'Belum Lunas'),
('Februari', 'TG-8', 125000, 0, 'Belum Lunas'),
('Maret', 'TG-9', 125000, 0, 'Belum Lunas'),
('April', 'TG-10', 125000, 0, 'Belum Lunas'),
('Mei', 'TG-11', 125000, 0, 'Belum Lunas'),
('Juni', 'TG-12', 125000, 0, 'Belum Lunas');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` varchar(6) NOT NULL,
  `kategori_nama` text NOT NULL,
  `kategori_jumlah` int(9) NOT NULL,
  `tahun_ajaran_id` char(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`, `kategori_jumlah`, `tahun_ajaran_id`) VALUES
('KT-001', 'SPP', 125000, '1516'),
('KT-002', 'AWAL TAHUN', 2100000, '1516'),
('KT-003', 'PRAKERIN', 500000, '1516');

-- --------------------------------------------------------

--
-- Table structure for table `lapor_diri`
--

CREATE TABLE `lapor_diri` (
  `lapor_diri_id` varchar(10) NOT NULL,
  `lapor_diri_tgl` date NOT NULL,
  `NIPD` char(8) NOT NULL,
  `keterangan` enum('Naik','Ulang') NOT NULL,
  `tahun_ajaran_id` char(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lapor_diri`
--

INSERT INTO `lapor_diri` (`lapor_diri_id`, `lapor_diri_tgl`, `NIPD`, `keterangan`, `tahun_ajaran_id`) VALUES
('LD-3', '2019-07-10', '11321690', 'Naik', '1617'),
('LD-2', '2019-06-22', '11321590', 'Naik', '1516'),
('LD-1', '2016-06-09', '11321589', 'Naik', '1617');

-- --------------------------------------------------------

--
-- Table structure for table `paket_keahlian`
--

CREATE TABLE `paket_keahlian` (
  `paket_keahlian_id` char(3) NOT NULL,
  `paket_keahlian_nama` varchar(35) NOT NULL,
  `program_keahlian_id` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paket_keahlian`
--

INSERT INTO `paket_keahlian` (`paket_keahlian_id`, `paket_keahlian_nama`, `program_keahlian_id`) VALUES
('RPL', 'Rekayasa Perangkat Lunak', 'TIK'),
('TKJ', 'Teknik Komputer dan Jaringan', 'TIK');

-- --------------------------------------------------------

--
-- Table structure for table `peserta_didik`
--

CREATE TABLE `peserta_didik` (
  `NIPD` char(8) NOT NULL,
  `NISN` char(10) NOT NULL,
  `pd_nama` varchar(35) NOT NULL,
  `pd_jenis_kelamin` enum('L','P') NOT NULL,
  `pd_tempat_lahir` varchar(35) NOT NULL,
  `pd_tanggal_lahir` date NOT NULL,
  `pd_agama` enum('Islam','Kristen','Hindu','Budha','Lainnya') NOT NULL,
  `pd_hp` char(15) NOT NULL,
  `pd_email` varchar(35) NOT NULL,
  `pd_telepon` char(10) NOT NULL,
  `pd_domisili` enum('0','1') NOT NULL,
  `status_keaktifan` enum('0','1') NOT NULL,
  `user_id` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peserta_didik`
--

INSERT INTO `peserta_didik` (`NIPD`, `NISN`, `pd_nama`, `pd_jenis_kelamin`, `pd_tempat_lahir`, `pd_tanggal_lahir`, `pd_agama`, `pd_hp`, `pd_email`, `pd_telepon`, `pd_domisili`, `status_keaktifan`, `user_id`) VALUES
('11321589', '9977624356', ' AAN RUKHANAH ', 'P', 'Cirebon', '1997-06-21', 'Islam', '89657892154', '', '', '0', '1', 'SS11321589'),
('11321590', '9975734058', ' ABDUL GADIR  ', 'L', 'Cirebon', '1997-10-10', 'Islam', '', '', '', '1', '1', 'SS11321590'),
('11321591', '9984690605', ' AGUSTIAN ERNADI PRATAMA ', 'L', 'Cirebon', '1998-08-25', 'Islam', '', '', '', '0', '1', 'SS11321591'),
('11321592', '9987589983', ' AJENG USWAH HASANAH ', 'P', 'Tulungagung', '1998-01-02', 'Islam', '8986846765', '', '', '1', '1', 'SS11321592'),
('11321594', '9984816051', ' ARI AHYANA ', 'L', 'Cirebon', '1997-04-12', 'Islam', '89676201007', '', '', '1', '1', 'SS11321594'),
('11321595', '9985898086', ' ARI SYARIFUDIN ', 'L', 'Kuningan', '1998-06-13', 'Islam', '85224703607', '', '', '1', '1', 'SS11321595'),
('11321596', '9981134334', ' ARVIN RASHEDA ', 'L', 'Cirebon', '1998-01-15', 'Islam', '89618339750', '', '', '1', '1', 'SS11321596'),
('11321597', '9974778539', ' AZHAR DARMAWAN ', 'L', 'Cirebon', '1997-09-29', 'Islam', '89670701497', '', '0231-48213', '1', '1', 'SS11321597'),
('11321598', '9975877346', ' BUDI PRASETYO ', 'L', 'Cirebon', '1997-10-10', 'Islam', '89672833863', '', '', '0', '1', 'SS11321598'),
('11321599', '9985879787', ' CHIKAL ADLI HADRIAN ', 'L', 'Cirebon', '1998-06-04', 'Islam', '87726074733', '', '', '0', '1', 'SS11321599'),
('11321600', '9974777445', ' DAVID ARIFANDI ', 'L', 'Cirebon', '1997-06-09', 'Islam', '87831137472', '', '', '1', '1', 'SS11321600'),
('11321602', '9975714814', ' FATUR SATYA TAUFANY ', 'L', 'Cirebon', '1997-07-12', 'Islam', '897703477', '', '', '1', '1', 'SS11321602'),
('11321603', '9985286684', ' FURQON RIZKY NURHADI ', 'L', 'Cirebon', '1998-08-29', 'Islam', '8,23189E+11', '', '', '1', '1', 'SS11321603'),
('11321604', '9985612857', ' GISKA LAZUARDANI ZAHRA ', 'P', 'Cirebon', '1998-06-02', 'Islam', '81895846235', '', '', '1', '1', 'SS11321604'),
('11321605', '9984690621', ' HENRY SYAHFITRA GIFFARI ', 'L', 'Cirebon', '1998-01-29', 'Islam', '82315811357', '', '', '1', '1', 'SS11321605'),
('11321606', '9979737993', ' HERI FAUJI ', 'L', 'Sumedanng', '1997-10-19', 'Islam', '85320792804', '', '', '1', '1', 'SS11321606'),
('11321607', '9984690436', ' ILHAM YAHYA NUGRAHA ', 'L', 'Jakarta', '1998-03-14', 'Islam', '', '', '', '1', '1', 'SS11321607'),
('11321608', '9975713831', ' INTAN ARYANTI ', 'P', 'Cirebon', '1997-06-11', 'Islam', '87829916830', '', '', '1', '1', 'SS11321608'),
('11321609', '9974778699', ' IRMA NURDIANA ', 'P', 'Tegal', '1997-12-26', 'Islam', '89605048248', '', '', '1', '1', 'SS11321609'),
('11321610', '9981180731', ' IRWAN AHMAD FAUZAN ', 'L', 'Kuningan', '1998-04-21', 'Islam', '85224530450', '', '', '1', '1', 'SS11321610'),
('11321611', '9964914803', ' JAFARO SIDIQ ', 'L', 'Cirebon', '1996-12-02', 'Islam', '83823392074', '', '', '1', '1', 'SS11321611'),
('11321612', '9984690746', ' JAPAR RIYANTO ', 'L', 'Cirebon', '1998-06-12', 'Islam', '85724645780', '', '', '1', '1', 'SS11321612'),
('11321613', '9974777594', ' KHOIRUL AMRI ', 'L', 'Jakarta', '1997-09-23', 'Islam', '', '', '', '1', '1', 'SS11321613'),
('11321614', '9986722096', ' MUHAMAD SAEFUL UMAYA ', 'L', 'Cirebon', '1998-02-21', 'Islam', '', '', '', '1', '1', 'SS11321614'),
('11321615', '9975716539', ' PUTRI FADILAH ', 'P', 'Cirebon', '1997-11-28', 'Islam', '85659841345', '', '', '1', '1', 'SS11321615'),
('11321616', '9988688503', ' RAFLY PRIAWAN ', 'L', 'Cirebon', '1998-03-21', 'Islam', '', '', '', '1', '1', 'SS11321616'),
('11321617', '9985818512', ' REKRIYAN DANISWARA ', 'L', 'Cirebon', '1998-01-20', 'Islam', '', '', '', '0', '1', 'SS11321617'),
('11321618', '9984691283', ' RIFKI NURCHOLIS ', 'L', 'Cirebon', '1998-09-01', 'Islam', '82320864713', '', '', '1', '1', 'SS11321618'),
('11321619', '132959773', ' RISMA NURMAULINA ', 'P', 'Cirebon', '2013-07-05', 'Islam', '', '', '', '1', '1', 'SS11321619'),
('11321620', '9984997583', ' RISMA RAHMANISA ', 'P', 'Cirebon', '1998-10-16', 'Islam', '8978297179', '', '0231-48848', '1', '1', 'SS11321620'),
('11321621', '9974778800', 'SAHNAZ PUTRIZQIA FLORENCE', 'P', 'Cirebon', '1997-12-09', 'Islam', '', '', '', '1', '1', 'SS11321621'),
('11321622', '9987451570', ' SEKHAN IQBAL ', 'L', 'Cirebon', '1998-07-07', 'Islam', '89660858424', '', '', '1', '1', 'SS11321622'),
('11321623', '9984999771', ' VEGA LUQMAN ', 'P', 'Cirebon', '1998-05-22', 'Islam', '85353295344', '', '', '1', '1', 'SS11321623'),
('11321625', '9975970237', ' ADITYA FIRMANSYAH ', 'L', 'Cirebon', '1997-12-13', 'Islam', '', '', '', '0', '1', 'SS11321625'),
('11321626', '9982007908', ' ANDIKA DWICKY ARMANANDA ', 'L', 'Cirebon', '1998-02-16', 'Islam', '89616671988', '', '', '1', '1', 'SS11321626'),
('11321627', '9988633045', ' ANGGA CHAIRIL PRATAMA ', 'L', 'Bandung', '1998-09-29', 'Islam', '', '', '', '0', '1', 'SS11321627'),
('11321628', '9986715695', ' BAGES EKA WIJAYANTO ', 'L', 'Cirebon', '1998-08-27', 'Islam', '', '', '', '0', '1', 'SS11321628'),
('11321629', '9975919330', ' BAHRAINSYAH OKSAREINALDI ', 'L', 'Cirebon', '1998-10-31', 'Islam', '89660240736', '', '', '0', '1', 'SS11321629'),
('11321630', '9975970615', ' DEBY CAHYANI ', 'P', 'Cirebon', '1997-07-21', 'Islam', '85224724713', '', '', '1', '1', 'SS11321630'),
('11321631', '9975896689', 'DESI MAS\'\'ULAH', 'P', 'Cirebon', '1997-12-18', 'Islam', '', '', '', '0', '1', 'SS11321631'),
('11321632', '9974777973', ' DEVI SILVIANI ', 'P', 'Cirebon', '1997-12-16', 'Islam', '87710678055', '', '', '1', '1', 'SS11321632'),
('11321633', '9985771904', ' DEWI NINGRUM ', 'P', 'Cirebon', '1998-04-20', 'Islam', '87729001071', '', '', '0', '1', 'SS11321633'),
('11321634', '9983757301', ' DLUHANI SEPTIA DEWI ', 'P', 'Indramayu', '1998-09-10', 'Islam', '85224318775', '', '', '0', '1', 'SS11321634'),
('11321635', '9973706352', ' EKA RATNA YULIANA ', 'P', 'Indramayu', '1997-12-31', 'Islam', '89672379714', '', '', '0', '1', 'SS11321635'),
('11321636', '9966056157', ' FAISHAL FADLAN ', 'L', 'Cirebon', '1996-06-10', 'Islam', '89604066550', '', '', '0', '1', 'SS11321636'),
('11321637', '9974223558', ' FARAH DZIHAN ', 'P', 'Depok', '1997-06-07', 'Islam', '818110973', '', '', '0', '1', 'SS11321637'),
('11321638', '9989973043', ' FAUZAN ADIMA ', 'L', 'Cirebon', '1998-02-01', 'Islam', '', '', '', '0', '1', 'SS11321638'),
('11321639', '9985854218', ' FIKRI MUHAMMAD FADHIL ', 'L', 'Cirebon', '1998-11-13', 'Islam', '81312270056', '', '', '0', '1', 'SS11321639'),
('11321640', '9985616125', ' FITRI RAHMAWATI ', 'P', 'Cirebon', '1998-02-04', 'Islam', '85321307377', '', '', '0', '1', 'SS11321640'),
('11321641', '9985616331', ' INDRA ROMADON ', 'L', 'Cirebon', '1998-01-25', 'Islam', '', '', '', '0', '1', 'SS11321641'),
('11321642', '9975997249', ' KHAERUL MUKHAIMIN ', 'L', 'Cirebon', '1997-08-14', 'Islam', '89662346510', '', '', '0', '1', 'SS11321642'),
('11321643', '9975870012', ' KHOLILULLAH ', 'L', 'Cirebon', '1997-01-15', 'Islam', '', '', '', '0', '1', 'SS11321643'),
('11321644', '9975718013', ' LISTYA ', 'P', 'Cirebon', '1997-06-04', 'Islam', '85323130895', '', '', '0', '1', 'SS11321644'),
('11321645', '9985770775', ' LUKY MULANA ', 'L', 'Cirebon', '1998-09-28', 'Islam', '89689113328', '', '', '0', '1', 'SS11321645'),
('11321646', '9985856732', ' LUSIANA DEWI ', 'P', 'Cirebon', '1998-06-24', 'Islam', '89655116041', '', '', '0', '1', 'SS11321646'),
('11321647', '9975997223', ' MAULANA FADLAN ', 'L', 'Cirebon', '1998-07-21', 'Islam', '89632844019', '', '', '0', '1', 'SS11321647'),
('11321648', '9985771099', ' MELAWATI SETIAWAN ', 'P', 'Cirebon', '1998-02-08', 'Islam', '81564624000', '', '0231-25208', '0', '1', 'SS11321648'),
('11321649', '9975996086', ' MOCHAMAD SADDAM ', 'L', 'Cirebon', '1997-02-08', 'Islam', '81220784427', '', '', '0', '1', 'SS11321649'),
('11321650', '9975799268', ' MUHAMAD IMAM SADELI ', 'L', 'Cirebon', '1997-03-01', 'Islam', '89655559689', '', '', '0', '1', 'SS11321650'),
('11321651', '9974704610', ' MUHAMMAD FAISAL RAMADANI ', 'L', 'Cirebon', '1997-10-13', 'Islam', '8812037697', '', '', '0', '1', 'SS11321651'),
('11321652', '9985678773', ' MUHAMMAD RIZQI MAULANA ', 'L', 'Kuningan', '1998-02-23', 'Islam', '82315976134', '', '', '0', '1', 'SS11321652'),
('11321653', '9989499511', ' MUHAMMAD SYARIF ', 'L', 'Brebes', '1998-12-11', 'Islam', '', '', '', '0', '1', 'SS11321653'),
('11321654', '9985770444', ' NADA FAUZIYAH ', 'P', 'Cirebon', '1998-09-14', 'Islam', '', '', '', '0', '1', 'SS11321654'),
('11321655', '9975932881', ' NUR MUHAMAD YOGIE ', 'L', 'Cirebon', '1997-11-21', 'Islam', '8,53218E+11', '', '', '1', '1', 'SS11321655'),
('11321656', '9985870881', ' RINA MAULANI ', 'P', 'Kulon Progo', '1998-07-03', 'Islam', '81313189934', '', '', '0', '1', 'SS11321656'),
('11321657', '9975997256', ' SLAMET BURHANUDIN ', 'L', 'Cirebon', '1997-09-18', 'Islam', '', '', '', '0', '1', 'SS11321657'),
('11321658', '9973005693', ' TRISNO MAULANA ', 'L', 'Pemalang', '1997-02-05', 'Islam', '', '', '', '0', '1', 'SS11321658'),
('11321660', '9984581084', ' YUSUF AGUNG PRABOWO ', 'L', 'Cirebon', '1998-04-21', 'Islam', '', '', '', '0', '1', 'SS11321660'),
('11321662', '9975718560', 'ADI MARTAWIJAYA', 'L', 'Cirebon', '1997-11-22', 'Islam', '81324084499', '', '', '1', '1', 'SS11321662'),
('11321663', '9985010221', ' ADI RAHMAN PRIYADI ', 'L', 'Cirebon', '1998-02-12', 'Islam', '', '', '', '1', '1', 'SS11321663'),
('11321664', '9985616500', ' ADJIE PURNAMA SAPUTRA ', 'L', 'Cirebon', '1998-03-16', 'Islam', '', '', '', '1', '1', 'SS11321664'),
('11321665', '9974777822', 'AHMAD GYMNASTIAR KHOIRUSHIDIQI', 'L', 'Cirebon', '1999-01-08', 'Islam', '82117774441', '', '', '1', '1', 'SS11321665'),
('11321666', '9982567596', ' ARIE ARBIANSYAH ', 'L', 'Pemalang', '1998-09-05', 'Islam', '', '', '', '1', '1', 'SS11321666'),
('11321667', '9975957716', ' ARIF NOER ABDURRAHMAN ', 'L', 'Cirebon', '1997-12-13', 'Islam', '', '', '', '1', '1', 'SS11321667'),
('11321668', '9975797951', ' ARRIE SATRIO NUGROHO ', 'L', 'Bandung', '1997-09-30', 'Islam', '89674789306', '', '', '1', '1', 'SS11321668'),
('11321669', '9985615479', ' DHIMAS FERDIANA ', 'L', 'Kuningan', '1998-03-17', 'Islam', '89674789306', '', '', '1', '1', 'SS11321669'),
('11321670', '9984691177', 'E. MUCHAMAD RIFQY CANDRA K', 'L', 'Cirebon', '1998-03-20', 'Islam', '89693322507', '', '', '1', '1', 'SS11321670'),
('11321671', '9974777371', 'EUIS OKTAVIANI', 'P', 'Cirebon', '1997-10-24', 'Islam', '89660450049', '', '0231-48012', '1', '1', 'SS11321671'),
('11321672', '9984690289', ' FACHRUL NOVRIZAL ', 'L', 'Cirebon', '1998-11-02', 'Islam', '89654661790', '', '', '1', '1', 'SS11321672'),
('11321673', '9985155127', 'FATHAN RAMADHAN', 'L', 'Cirebon', '1998-01-25', 'Islam', '89624896345', '', '1231-23794', '1', '1', 'SS11321673'),
('11321674', '9975253407', ' FIRMAN DWI CAHYA ', 'L', 'Cirebon', '1997-11-24', 'Islam', '', '', '', '1', '1', 'SS11321674'),
('11321675', '9975253437', ' GILANG SUBAGJA ', 'L', 'Ciamis', '1997-11-22', 'Islam', '85224670800', '', '', '1', '1', 'SS11321675'),
('11321676', '9984733088', ' HERNAWAN YULIA DWI JAYA ', 'L', 'Tangerang', '1998-03-07', 'Islam', '', '', '', '0', '1', 'SS11321676'),
('11321679', '9979689170', ' KHAIRUNNISA ASRI N ', 'P', 'Cirebon', '1997-12-21', 'Islam', '81911311999', '', '', '0', '1', 'SS11321679'),
('11321680', '9983955002', 'MOCHAMAD RIZK ALVIN FERNANDA', 'L', 'Cirebon', '1998-01-13', 'Islam', '8,13133E+11', '', '', '1', '1', 'SS11321680'),
('11321682', '9974777720', 'MUHAMAD FIKRI SUNARYO', 'P', 'Cirebon', '1997-07-26', 'Islam', '89638366935', '', '', '1', '1', 'SS11321682'),
('11321683', '9984782089', 'MUHAMAD HASYIM ASARI', 'L', 'Cirebon', '1998-09-28', 'Islam', '', '', '', '1', '1', 'SS11321683'),
('11321684', '9984997982', ' MUHAMMAD AGUS SOLIHIN ', 'L', 'Cirebon', '1998-09-13', 'Islam', '8971417450', '', '', '1', '1', 'SS11321684'),
('11321685', '9974778341', ' MUHAMMAD HANIFAN SUBHAN ', 'L', 'Cirebon', '1997-12-06', 'Islam', '87829177213', '', '', '1', '1', 'SS11321685'),
('11321686', '9985616344', ' NANDHIF SHIDQI AGYA SUHERMAN` ', 'L', 'Cirebon', '1998-10-24', 'Islam', '89624408831', '', '', '1', '1', 'SS11321686'),
('11321687', '9985616560', ' NUR ADLI FATHAN ', 'L', 'Cirebon', '1998-01-30', 'Islam', '85722717909', '', '', '1', '1', 'SS11321687'),
('11321688', '9987088482', ' NURDIYANAH ', 'P', 'Cirebon', '1998-01-31', 'Islam', '', '', '', '1', '1', 'SS11321688'),
('11321689', '9974777390', ' NURLAELA ', 'P', 'Cirebon', '1997-06-16', 'Islam', '8976319579', '', '', '1', '1', 'SS11321689'),
('11321690', '9975096010', ' PUSPITA MAULANA ARUMSARI ', 'P', 'Cirebon', '1997-09-06', 'Islam', '89650823058', '', '', '1', '1', 'SS11321690'),
('11321691', '9974777611', ' RAFISAE DWI WAHYU ZAEN ', 'L', 'Bogor', '1997-09-22', 'Islam', '89654418400', '', '', '1', '1', 'SS11321691'),
('11321692', '9985791789', 'REGINA SHILIHAYATI', 'P', 'Cirebon', '1998-07-29', 'Islam', '89660272889', '', '', '0', '1', 'SS11321692'),
('11321693', '9974817634', ' RIYAN FARID HARTANTO ', 'L', 'Cirebon', '1997-01-29', 'Islam', '', '', '', '1', '1', 'SS11321693'),
('11321694', '9984691358', ' SHINDI HANDIYANI ', 'P', 'Cirebon', '1998-01-31', 'Islam', '', '', '', '1', '1', 'SS11321694'),
('11321695', '9980632067', 'WIDYA SAFITRI KUSUMANINGTYAS', 'P', 'Kendal', '1998-02-01', 'Islam', '', '', '', '1', '1', 'SS11321695'),
('11321696', '9974869721', 'YANA EDWIN NATA', 'L', 'Cirebon', '1997-06-15', 'Islam', '89695197255', '', '', '0', '1', 'SS11321696'),
('11422349', '9995152170', 'ALDI CAHYA PRIEVANA', 'L', 'Cirebon', '1999-04-30', 'Islam', '87733223786', '', '', '1', '1', 'SS11422349'),
('11422350', '9995991649', 'ANGGI PRAKUSUMAH', 'L', 'Cirebon', '1999-05-27', 'Islam', '83823148884', '', '', '0', '1', 'SS11422350'),
('11422351', '9996487298', 'BAYU RAMADHAN', 'L', 'Cirebon', '1999-01-02', 'Islam', '81313104351', '', '', '0', '1', 'SS11422351'),
('11422352', '9996056220', 'CAHYANINGSIH', 'P', 'Cirebon', '1999-05-24', 'Islam', '8974675295', '', '', '1', '1', 'SS11422352'),
('11422353', '9995150981', 'CAKRA WIRA DANA', 'L', 'Cirebon', '1999-04-07', 'Islam', '', '', '', '1', '1', 'SS11422353'),
('11422354', '9987451474', 'CHAIDIR YUSRIL', 'L', 'Cirebon', '1998-12-03', 'Islam', '', '', '', '1', '1', 'SS11422354'),
('11422355', '9985164723', 'DICKY WAHYUDI', 'L', 'Kuningan', '1998-12-08', 'Islam', '85691081771', '', '', '0', '1', 'SS11422355'),
('11422356', '9996097506', 'EKA DARMAWAN', 'L', 'Cirebon', '1999-06-19', 'Islam', '83824478846', '', '', '1', '1', 'SS11422356'),
('11422357', '9994799951', 'ELVIN RIAN PRAYOGA', 'L', 'Cirebon', '1999-04-10', 'Islam', '81324686883', '', '', '1', '1', 'SS11422357'),
('11422358', '9988411572', 'ENDAH SAFITRI', 'P', 'Banyumas', '1998-12-29', 'Islam', '', '', '', '1', '1', 'SS11422358'),
('11422359', '9994799919', 'FADHILAH ARUM PURNAMASARI', 'P', 'Cirebon', '1999-07-16', 'Islam', '89618482409', '', '', '1', '1', 'SS11422359'),
('11422360', '9995151250', 'FAHMI WIBOWO', 'L', 'Cirebon', '1999-06-21', 'Islam', '85351827269', '', '', '1', '1', 'SS11422360'),
('11422361', '9997343040', 'FAJAR RAMADHAN', 'L', 'Cirebon', '1999-12-18', 'Islam', '82227155056', '', '', '0', '1', 'SS11422361'),
('11422362', '9994799537', 'FANDI ACHMAD', 'L', 'Cirebon', '1999-04-14', 'Islam', '82216467100', '', '', '1', '1', 'SS11422362'),
('11422363', '9995153387', 'FAUZAN NAMRULLAH', 'L', 'Cirebon', '1999-02-23', 'Islam', '85222713511', '', '', '1', '1', 'SS11422363'),
('11422364', '9995151247', 'FERI APRIA SANDY', 'L', 'Bekasi', '1999-04-12', 'Islam', '81316063685', '', '', '1', '1', 'SS11422364'),
('11422365', '9999215418', 'FUJIANTO', 'L', 'Cirebon', '1999-03-16', 'Islam', '82318744110', '', '', '1', '1', 'SS11422365'),
('11422366', '9988261573', 'GILANG TANIA IMANISARI', 'P', 'Cirebon', '1998-09-01', 'Islam', '', '', '0231-23647', '1', '1', 'SS11422366'),
('11422367', '9987533481', 'KRISTINA', 'P', 'Cirebon', '1998-08-25', 'Islam', '8998125534', '', '', '0', '1', 'SS11422367'),
('11422369', '9986650121', 'LULU AULIYA ASKA', 'P', 'Tegal', '1998-10-03', 'Islam', '', '', '', '0', '1', 'SS11422369'),
('11422370', '9995150338', 'MAMAH ROCHMATIKA', 'P', 'Cirebon', '1999-12-21', 'Islam', '83823362559', '', '', '1', '1', 'SS11422370'),
('11422371', '9996977171', 'MOHAMAD RIZKILAH YUFILADY', 'L', 'Cirebon', '1999-07-19', 'Islam', '8121437420', '', '', '0', '1', 'SS11422371'),
('11422372', '9995810444', 'MUHAMAD RUSLI GIRALDI', 'L', 'Cirebon', '1999-01-24', 'Islam', '', '', '8961827806', '1', '1', 'SS11422372'),
('11422373', '9995153873', 'MUHAMMAD NICHOLAS IQBAL', 'L', 'Cirebon', '1999-07-27', 'Islam', '82319254118', '', '', '0', '1', 'SS11422373'),
('11422376', '9995797596', 'NIA APRILIA', 'P', 'Cirebon', '1999-04-29', 'Islam', '', '', '', '1', '1', 'SS11422376'),
('11422377', '9985856735', 'NIRISANGGITA', 'P', 'Cirebon', '1998-07-11', 'Islam', '89693335067', '', '', '1', '1', 'SS11422377'),
('11422378', '9994810632', 'NISA SALSABILA', 'P', 'Cirebon', '1999-10-20', 'Islam', '85864401670', '', '', '0', '1', 'SS11422378'),
('11422379', '9996017730', 'NISFI HIDAYATI', 'P', 'Cirebon', '1999-11-22', 'Islam', '89662728990', '', '', '0', '1', 'SS11422379'),
('11422380', '9995816433', 'NITA NURANISSA HASAN', 'P', 'Cirebon', '1999-09-14', 'Islam', '81222113033', '', '', '1', '1', 'SS11422380'),
('11422381', '4795771', 'RENDIKA PRASETYA', 'L', 'Cirebon', '2000-01-08', 'Islam', '81946927099', '', '', '0', '1', 'SS11422381'),
('11422382', '9995933236', 'RIYANWAR SETIADI', 'L', 'Cirebon', '1999-05-06', 'Islam', '87710455437', '', '', '0', '1', 'SS11422382'),
('11422383', '9994799392', 'SATRYO DHANANJOYO', 'L', 'Cirebon', '1999-01-24', 'Islam', '', '', '0231-23089', '1', '1', 'SS11422383'),
('11422384', '9984166171', 'SUHARI', 'L', 'Cirebon', '1998-07-03', 'Islam', '89652355576', '', '', '0', '1', 'SS11422384'),
('11422385', '9994799504', 'TEGUH BUDIAWAN', 'L', 'Cirebon', '1999-07-17', 'Islam', '8978117204', '', '', '1', '1', 'SS11422385'),
('11422386', '9989198226', 'TIAS GUMELAR TIMORISKY', 'L', 'Dili', '1998-11-11', 'Islam', '82262300972', '', '', '0', '1', 'SS11422386'),
('11422387', '9995271579', 'TOMOKI KAMEMOTO', 'L', 'Serang', '1999-01-13', 'Islam', '81946960603', '', '', '1', '1', 'SS11422387'),
('11422388', '9995150939', 'ADAM KAUTSAR', 'L', 'Cirebon', '1999-07-01', 'Islam', '', '', '', '1', '1', 'SS11422388'),
('11422389', '9994953280', 'AFIFAH OKTAVIANI', 'P', 'Cirebon', '1999-10-02', 'Islam', '', '', '', '1', '1', 'SS11422389'),
('11422391', '9994810309', 'ALVIN PRASETIO', 'L', 'Cirebon', '1998-03-11', 'Islam', '', '', '', '1', '1', 'SS11422391'),
('11422392', '9995151581', 'ANGGIA SRI RAHAYU', 'P', 'Cirebon', '1999-03-27', 'Islam', '', '', '', '1', '1', 'SS11422392'),
('11422393', '9984691764', 'DIMAS HADI PRASETIO', 'L', 'Cirebon', '1998-06-05', 'Islam', '', '', '', '1', '1', 'SS11422393'),
('11422394', '9996606473', 'DINA NUR RACHMAH', 'P', 'Cirebon', '1999-01-07', 'Islam', '', '', '', '1', '1', 'SS11422394'),
('11422395', '9983382062', 'DINDA KOMALASARI', 'P', 'Cirebon', '1998-11-25', 'Islam', '', '', '', '1', '1', 'SS11422395'),
('11422396', '9984690827', 'FAJAR PASHA', 'L', 'cirebon', '1998-12-28', 'Islam', '', '', '', '1', '1', 'SS11422396'),
('11422397', '9986329313', 'GITA SAVITRI', 'L', 'Cirebon', '1998-02-02', 'Islam', '', '', '', '1', '1', 'SS11422397'),
('11422398', '9995811214', 'IKKE CAHYANI', 'P', 'Cirebon', '1999-07-11', 'Islam', '', '', '', '1', '1', 'SS11422398'),
('11422399', '9994810899', 'ISSE LIANA SEPTIANI', 'P', 'Cirebon', '1999-09-07', 'Islam', '', '', '', '1', '1', 'SS11422399'),
('11422400', '9995492601', 'ISTIQLAL DAMAR ADI', 'L', 'Surakarta', '1999-04-19', 'Islam', '', '', '', '0', '1', 'SS11422400'),
('11422401', '9997303410', 'MAULANA AKBAR ALFANI', 'L', 'Cilegon', '1999-06-25', 'Islam', '', '', '', '1', '1', 'SS11422401'),
('11422402', '9994810630', 'MEGA AYU NINGRUM', 'P', 'Cirebon', '1999-06-02', 'Islam', '', '', '', '1', '1', 'SS11422402'),
('11422403', '9995150476', 'MEGA NANDA', 'P', 'Cirebon', '1999-05-19', 'Islam', '', '', '', '1', '1', 'SS11422403'),
('11422404', '9995810007', 'MELY APRILIYANI', 'P', 'Cirebon', '1999-05-01', 'Islam', '', '', '', '1', '1', 'SS11422404'),
('11422405', '9996467170', 'MOCHAMAD FACHRUL SANI', 'L', 'Cirebon', '1999-02-24', 'Islam', '', '', '', '1', '1', 'SS11422405'),
('11422406', '9995810390', 'MOH RUCHIAT', 'L', 'Cirebon', '1999-09-13', 'Islam', '', '', '', '1', '1', 'SS11422406'),
('11422407', '9994810302', 'MOHAMMAD HAFIIDUDDIN WA\'\'ANHA', 'L', 'Cirebon', '1999-12-01', 'Islam', '', '', '', '1', '1', 'SS11422407'),
('11422408', '9984323048', 'MUHAMAD FAISAL', 'L', 'Cirebon', '1998-04-12', 'Islam', '', '', '', '1', '1', 'SS11422408'),
('11422409', '9994187863', 'MUHAMMAD AFRIZAL NURFALAH', 'L', 'Cirebon', '1999-04-07', 'Islam', '', '', '', '1', '1', 'SS11422409'),
('11422410', '9995797017', 'MUHAMMAD ANUGRAH SUTRESNA', 'L', 'Cirebon', '1999-05-03', 'Islam', '', '', '', '1', '1', 'SS11422410'),
('11422411', '9995314428', 'MUHAMMAD DIFFA SIDIQ SUMANA', 'L', 'Cirebon', '1999-05-29', 'Islam', '', '', '', '1', '1', 'SS11422411'),
('11422412', '9977169668', 'MUHAMMAD ILHAM', 'L', 'Cirebon', '1997-12-13', 'Islam', '', '', '', '1', '1', 'SS11422412'),
('11422413', '9994799678', 'NURFATIKAH', 'P', 'Cirebon', '1999-07-04', 'Islam', '', '', '', '1', '1', 'SS11422413'),
('11422414', '9989551376', 'RATIH FITRIANI', 'P', 'Cirebon', '1998-12-15', 'Islam', '', '', '', '1', '1', 'SS11422414'),
('11422415', '9984997716', 'REFFI MAHARDIKA', 'L', 'Cirebon', '1998-10-16', 'Islam', '', '', '', '1', '1', 'SS11422415'),
('11422416', '9987150027', 'RHAMADANY EKA SAPUTRO', 'L', 'Cirebon', '1998-11-07', 'Islam', '', '', '', '1', '1', 'SS11422416'),
('11422417', '9994176842', 'RIFKI APRIANTO', 'L', 'Cirebon', '1999-04-09', 'Islam', '', '', '', '1', '1', 'SS11422417'),
('11422418', '9995811318', 'RINA MULYANA', 'P', 'Cirebon', '1999-03-03', 'Islam', '', '', '', '1', '1', 'SS11422418'),
('11422419', '9997999602', 'RINALDI GIPA OKTAPIAN', 'L', 'Kuningan', '1999-10-06', 'Islam', '', '', '', '0', '1', 'SS11422419'),
('11422421', '9997263173', 'SITI CHODIJAH APRILIYANI', 'P', 'Cirebon', '1999-04-01', 'Islam', '', '', '', '0', '1', 'SS11422421'),
('11422422', '9994953393', 'SITI NURHALIZA', 'P', 'Cirebon', '1999-07-27', 'Islam', '', '', '', '1', '1', 'SS11422422'),
('11422423', '9995797749', 'SITI SUKMAWATI PRATIWI', 'P', 'Cirebon', '1999-02-11', 'Islam', '', '', '', '1', '1', 'SS11422423'),
('11422424', '9984691359', 'SURYO DWI PRANOTO', 'L', 'Cirebon', '1998-03-15', 'Islam', '', '', '', '1', '1', 'SS11422424'),
('11422425', '9984998149', 'TIA SYAFIRA AKHIRIANI', 'P', 'Cirebon', '1998-12-08', 'Islam', '', '', '', '1', '1', 'SS11422425'),
('11422426', '9994799856', 'YONIKA BUDIARTI', 'P', 'cirebon', '1999-04-11', 'Islam', '', '', '', '1', '1', 'SS11422426'),
('11422428', '9994799442', 'ZAQI MIFTAH HARISH', 'L', 'Cirebon', '1999-07-10', 'Islam', '', '', '', '1', '1', 'SS11422428'),
('11422429', '9994784666', 'ADITYA RACHMAN', 'L', 'Cirebon', '1999-12-12', 'Islam', '', '', '', '1', '1', 'SS11422429'),
('11422430', '9995978955', 'ALFIN MAULANA BUKHORI', 'L', 'Cirebon', '1999-07-04', 'Islam', '', '', '', '0', '1', 'SS11422430'),
('11422431', '9995150769', 'ARI HARYANTO', 'L', 'Cirebon', '1999-04-24', 'Islam', '', '', '', '1', '1', 'SS11422431'),
('11422432', '9996032640', 'AYAT MAULANA', 'L', 'Cirebon', '1999-06-21', 'Islam', '', '', '', '0', '1', 'SS11422432'),
('11422433', '9991923582', 'BUCHARRY RAMADHIAWAN', 'L', 'Cirebon', '1999-01-11', 'Islam', '', '', '', '1', '1', 'SS11422433'),
('11422435', '9994810477', 'DANI MULYA PRIYATNA', 'L', 'Cirebon', '1999-09-21', 'Islam', '', '', '', '1', '1', 'SS11422435'),
('11422436', '9987051681', 'DENI HADIYA AKMALA', 'L', 'Kuningan', '1998-08-18', 'Islam', '', '', '', '0', '1', 'SS11422436'),
('11422437', '9995799517', 'DERANI AUDRI PERMATASARI', 'P', 'Cirebon', '1998-12-09', 'Islam', '', '', '', '1', '1', 'SS11422437'),
('11422438', '9997980380', 'DEVI RAHMAWATI PUTRI', 'P', 'Cirebon', '1999-12-08', 'Islam', '', '', '', '1', '1', 'SS11422438'),
('11422439', '9996016355', 'DHIKA FADHILLAH', 'L', 'Cirebon', '1999-03-09', 'Islam', '', '', '', '0', '1', 'SS11422439'),
('11422440', '9999661728', 'DWI SISWANTO', 'L', 'Cirebon', '1999-05-15', 'Islam', '', '', '', '0', '1', 'SS11422440'),
('11422441', '9985856736', 'ELIS FEBRIANI', 'P', 'Cirebon', '1998-07-24', 'Islam', '', '', '', '1', '1', 'SS11422441'),
('11422442', '9984999915', 'FAHMI DAMARA', 'L', 'Cirebon', '1999-08-02', 'Islam', '', '', '', '1', '1', 'SS11422442'),
('11422443', '9996052284', 'FANDI EDWAR RIYANTO', 'L', 'Cirebon', '1999-09-05', 'Islam', '', '', '', '0', '1', 'SS11422443'),
('11422444', '9995382787', 'HANDIKA PRATAMA', 'L', 'Cirebon', '1999-04-07', 'Islam', '', '', '', '1', '1', 'SS11422444'),
('11422445', '9984691463', 'HEGARMANAH MUHABATIN', 'L', 'Cirebon', '1998-05-11', 'Islam', '', '', '', '1', '1', 'SS11422445'),
('11422447', '9984690883', 'INDAH ANDRIANA', 'P', 'Kebumen', '1998-12-07', 'Islam', '', '', '', '1', '1', 'SS11422447'),
('11422448', '9985850400', 'JAMALUDIN HIDAYAT', 'L', 'Cirebon', '1998-03-19', 'Islam', '', '', '', '0', '1', 'SS11422448'),
('11422449', '9984246190', 'KRISNA NUGRAHA', 'L', 'Indramayu', '1998-06-25', 'Islam', '', '', '', '0', '1', 'SS11422449'),
('11422450', '9985858165', 'MELANY KHURIATUL MAULA', 'P', 'Cirebon', '1998-12-07', 'Islam', '', '', '', '1', '1', 'SS11422450'),
('11422451', '9985891208', 'MUHAMAD YOGI SATRIAWAN', 'L', 'Cirebon', '1998-08-27', 'Islam', '', '', '', '0', '1', 'SS11422451'),
('11422452', '9999428520', 'MUHAMMAD AGUM ALFIAN FIRDAUS', 'L', 'Jakarta', '1999-10-28', 'Islam', '', '', '', '0', '1', 'SS11422452'),
('11422454', '9999653415', 'MUHAMMAD ZAKI AMANSYAH', 'L', 'cirebon', '1999-03-07', 'Islam', '', '', '', '1', '1', 'SS11422454'),
('11422455', '9998397619', 'R. ELANG RICKY FEBIANTO', 'L', 'Tangerang', '1999-02-27', 'Islam', '', '', '', '1', '1', 'SS11422455'),
('11422456', '9995933634', 'RAHADI', 'L', 'Kuningan', '1999-04-24', 'Islam', '', '', '', '0', '1', 'SS11422456'),
('11422457', '9995150927', 'RAMA NUGRAHA', 'L', 'Cirebon', '1998-09-17', 'Islam', '', '', '', '1', '1', 'SS11422457'),
('11422458', '9996092413', 'RD.MUHAMMAD SALEH IDRIS', 'L', 'Cirebon', '1999-07-13', 'Islam', '', '', '', '1', '1', 'SS11422458'),
('11422459', '9997261920', 'RISKY DARMAWAN', 'L', 'Cirebon', '1999-04-29', 'Islam', '', '', '', '0', '1', 'SS11422459'),
('11422460', '9995763264', 'ROYYAAN HIDAYAT', 'L', 'Cirebon', '1999-04-26', 'Islam', '', '', '', '0', '1', 'SS11422460'),
('11422461', '9985612950', 'SANDY PRIYATNA', 'L', 'Cirebon', '1998-10-12', 'Islam', '', '', '', '1', '1', 'SS11422461'),
('11422462', '9995810537', 'SEPTI HANDINI', 'P', 'Cirebon', '1999-09-12', 'Islam', '', '', '', '1', '1', 'SS11422462'),
('11422463', '9985615634', 'SITI KHODIJAH', 'P', 'Cirebon', '1998-12-19', 'Islam', '', '', '', '1', '1', 'SS11422463'),
('11422464', '9995153871', 'SOLEHU SAIIN', 'L', 'Cirebon', '1999-07-19', 'Islam', '', '', '', '1', '1', 'SS11422464'),
('11422465', '9992098677', 'SYAHRUL IRAWAN', 'L', 'Tegal', '1999-08-07', 'Islam', '', '', '', '1', '1', 'SS11422465'),
('11422466', '9995978815', 'UTHFALA JIWANI', 'P', 'Cirebon', '1999-04-13', 'Islam', '', '', '', '0', '1', 'SS11422466'),
('11422467', '149473087', 'VALENTINO BRILIYANTO', 'L', 'Cirebon', '2014-07-14', 'Islam', '', '', '', '1', '1', 'SS11422467'),
('11522518', '9995797759', 'ACHMAD FIRDAUS DARUSALAM', 'L', 'Cirebon', '1999-03-26', 'Islam', '89650436425', '', '', '1', '1', 'SS11522518'),
('11522519', '9990759246', 'ALZIKRI AFIF', 'L', 'Padang', '1999-10-07', 'Islam', '82129683525', '', '', '1', '1', 'SS11522519'),
('11522520', '8605091', 'ASTIN HASTUTI', 'P', 'Indramayu', '2000-05-03', 'Islam', '89666147695', '', '', '1', '1', 'SS11522520'),
('11522521', '9617405', 'DEFFAN FEBRIAN DIRMANTHARA', 'L', 'Cirebon', '2000-02-10', 'Islam', '8179099002', '', '', '1', '1', 'SS11522521'),
('11522522', '4573914', 'DYAH PERMATA HAYATI', 'P', 'Cirebon', '2000-03-23', 'Islam', '87710334348', '', '', '1', '1', 'SS11522522'),
('11522523', '4574251', 'ELANG RIVALDI ARGIANTAMA', 'L', 'Cirebon', '2000-03-20', 'Islam', '', '', '', '1', '1', 'SS11522523'),
('11522524', '9995810392', 'FAHRIZAL ZIDAN', 'L', 'Tegal', '1999-09-29', 'Islam', '87729003575', '', '', '1', '1', 'SS11522524'),
('11522525', '4575264', 'FARID FADLURROHMAN', 'L', 'Cirebon', '2000-09-09', 'Islam', '89660507129', 'faridfadlurrohman8@gmail.com', '', '1', '1', 'SS11522525'),
('11522526', '3052492', 'FAROH HATUL AINI', 'P', 'Cirebon', '2000-12-07', 'Islam', '81312121263', '', '', '1', '1', 'SS11522526'),
('11522527', '4115606', 'FATMAWATI', 'P', 'Cirebon', '2000-02-10', 'Islam', '89615480565', '', '', '1', '1', 'SS11522527'),
('11522528', '9995153884', 'FIRDA RISMA INTANIA', 'P', 'Cirebon', '1999-11-20', 'Islam', '8231902131', '', '', '1', '1', 'SS11522528'),
('11522529', '9996052400', 'GENTA PANCA NUGRAHA', 'L', 'Bekasi', '1999-10-02', 'Islam', '8998139607', '', '', '0', '1', 'SS11522529'),
('11522530', '4116151', 'GORBI ABDALLAH', 'L', 'Cirebon', '2000-11-20', 'Islam', '89634069508', '', '', '1', '1', 'SS11522530'),
('11522531', '9995150789', 'HAIKAL RAMADHAN', 'L', 'Cirebon', '1999-12-26', 'Islam', '81235644363', '', '', '1', '1', 'SS11522531'),
('11522532', '6163544', 'HELIYATUL HAUROI', 'P', 'Madura', '2000-04-15', 'Islam', '81804646973', 'heliyatul@yahoo.com', '', '1', '1', 'SS11522532'),
('11522533', '1538807', 'HERY FATHURAHMAN', 'L', 'Cirebon', '2000-04-27', 'Islam', '8971234774', '', '', '0', '1', 'SS11522533'),
('11522534', '8404573', 'IFAN ACHMAD HANAFI', 'L', 'Cirebon', '2000-03-08', 'Islam', '89693743252', '', '', '0', '1', 'SS11522534'),
('11522535', '7633386', 'ILHAM NUR WAHYU', 'L', 'Banjarmasin', '2000-09-03', 'Islam', '82121112179', '', '', '1', '1', 'SS11522535'),
('11522536', '4117027', 'JAMAL NOOR KANTRY', 'L', 'Cirebon', '2000-06-23', 'Islam', '81312349054', '', '', '1', '1', 'SS11522536'),
('11522537', '1735112', 'M. HAFIZ BASHARI', 'L', 'Cirebon', '2000-04-23', 'Islam', '89630161657', '', '', '1', '1', 'SS11522537'),
('11522538', '8085558', 'MUHAMMAD ABDURROHMAN', 'L', 'Kuningan', '2000-02-24', 'Islam', '85222066510', '', '', '0', '1', 'SS11522538'),
('11522539', '9995810814', 'MOCH. ILHAM ROMADAN', 'L', 'Bangkalan', '1999-12-20', 'Islam', '89673950434', '', '', '1', '1', 'SS11522539'),
('11522540', '6046201', 'MOCH. NURHIDAYAT SASTRA', 'L', 'Cirebon', '2000-02-13', 'Islam', '87829777959', '', '', '1', '1', 'SS11522540'),
('11522541', '4578371', 'MUHAMMAD FAJAR FAUZAN', 'L', 'Cirebon', '2000-07-30', 'Islam', '85316482728', '', '', '1', '1', 'SS11522541'),
('11522542', '9988364765', 'MUHAMAD FIRMAN', 'L', 'Cirebon', '1998-05-26', 'Islam', '', '', '', '1', '1', 'SS11522542'),
('11522543', '8545469', 'MUHAMMAD CHOIRUL WAHID', 'L', 'Cirebon', '2000-09-18', 'Islam', '', '', '', '1', '1', 'SS11522543'),
('11522544', '9995810174', 'MUHAMAD USMAN', 'L', 'Cirebon', '1999-03-10', 'Islam', '89624918761', '', '', '1', '1', 'SS11522544'),
('11522545', '4458904', 'MUHAMMAD WIKALDY NUR SAPUTRO', 'L', 'Cirebon', '2000-10-25', 'Islam', '', '', '', '1', '1', 'SS11522545'),
('11522546', '9995799569', 'NICO ARYA MAHENDRA', 'P', 'Cirebon', '1999-12-25', 'Islam', '82319635225', '', '', '1', '1', 'SS11522546'),
('11522547', '4578349', 'NOVA LIA DWI MAGENDA', 'P', 'Cirebon', '2000-02-18', 'Islam', '81214586333', '', '', '1', '1', 'SS11522547'),
('11522548', '9995313529', 'NUNUNG NUR\'AENI', 'P', 'Cirebon', '1999-10-13', 'Islam', '85353371739', '', '', '1', '1', 'SS11522548'),
('11522549', '9995799678', 'PENTA MAULIDIN', 'L', 'Cirebon', '1999-07-06', 'Islam', '8972057395', '', '', '1', '1', 'SS11522549'),
('11522550', '6864313', 'RANGGA RAHMAN WIJAYA', 'L', 'Cirebon', '2000-01-17', 'Islam', '87829145258', '', '', '1', '1', 'SS11522550'),
('11522551', '3952638', 'RISMADIANTI', 'P', 'Cirebon', '2000-05-12', 'Islam', '89517128702', '', '', '1', '1', 'SS11522551'),
('11522552', '9999798637', 'ROBY', 'L', 'Cirebon', '1999-10-10', 'Islam', '8995895013', '', '', '1', '1', 'SS11522552'),
('11522553', '3951447', 'ROHIM WAHYUDIN', 'L', 'Cirebon', '2000-05-10', 'Islam', '85224976366', '', '', '1', '1', 'SS11522553'),
('11522554', '9997330044', 'SAEFULLAH FASA', 'L', 'Cirebon', '1999-12-28', 'Islam', '85724040899', '', '', '1', '1', 'SS11522554'),
('11522555', '3614497', 'SHERINA EKA SUMANTRI', 'P', 'Cirebon', '2000-09-18', 'Islam', '89693662638', '', '', '1', '1', 'SS11522555'),
('11522556', '9992023254', 'SINTA AGUSTIANI RAHARJA', 'P', 'Cirebon', '1999-08-07', 'Islam', '85352352737', '', '', '1', '1', 'SS11522556'),
('11522557', '9995313055', 'SITI MAEMUNA', 'P', 'Cirebon', '1999-05-17', 'Islam', '89633683381', '', '', '1', '1', 'SS11522557'),
('11522558', '4116133', 'SRI NINGSIH HERMANTO PUTRI', 'P', 'Cirebon', '2000-05-25', 'Islam', '89670096855', '', '', '1', '1', 'SS11522558'),
('11522559', '4576938', 'ABDULLAH FIQIH', 'L', 'Cirebon', '2000-04-21', 'Islam', '89699394461', '', '0231-23162', '1', '1', 'SS11522559'),
('11522560', '4694473', 'ADITYA RAHMAN', 'L', 'Bekasi', '2000-04-18', 'Islam', '81353453901', '', '', '1', '1', 'SS11522560'),
('11522561', '9997827689', 'AHMAD FIKRI', 'L', 'Cirebon', '1999-09-30', 'Islam', '81395820552', '', '', '1', '1', 'SS11522561'),
('11522562', '9991074438', 'AHMAD MAULANA FIRMANSYAH', 'L', 'Denpasar', '1999-06-08', 'Islam', '8112704070', '', '', '0', '1', 'SS11522562'),
('11522563', '5249626', 'AHMAD NURROHMAN', 'L', 'Cirebon', '2000-08-31', 'Islam', '', '', '', '0', '1', 'SS11522563'),
('11522564', '3614379', 'AKHMAD NUR FAIDZI', 'L', 'Cirebon', '2000-05-14', 'Islam', '89698044269', '', '', '1', '1', 'SS11522564'),
('11522565', '9995346279', 'AL MAKRUF YOGA PRATAMA', 'L', 'Karanganyar', '1999-09-11', 'Islam', '8817817926', '', '', '0', '1', 'SS11522565'),
('11522566', '8977951', 'ASEP MAULANA YUSUP', 'L', 'Cirebon', '2000-04-17', 'Islam', '8817803761', '', '', '1', '1', 'SS11522566'),
('11522567', '9066557', 'ASTRIED AMALIA', 'P', 'Cirebon', '2000-06-01', 'Islam', '', '', '', '1', '1', 'SS11522567'),
('11522568', '8284491', 'BAWANA PUTRA PRATAMA', 'L', 'Cirebon', '2000-10-23', 'Islam', '82319609707', '', '', '1', '1', 'SS11522568'),
('11522569', '4922277', 'DIMAS SAPUTRA', 'L', 'Cirebon', '2000-01-31', 'Islam', '88808237556', '', '', '0', '1', 'SS11522569'),
('11522570', '9995795978', 'DION RAKAARIRI', 'L', 'Cirebon', '1999-06-03', 'Islam', '89650230730', '', '', '1', '1', 'SS11522570'),
('11522571', '5001288', 'FAHMI ALAMSYAH', 'L', 'Cirebon', '2000-07-10', 'Islam', '83823752567', '', '', '1', '1', 'SS11522571'),
('11522572', '9996052697', 'FEBRI HERMAWAN', 'L', 'Cirebon', '1999-02-28', 'Islam', '89653290910', '', '', '0', '1', 'SS11522572'),
('11522573', '15660364', 'HANI SULISTIANI', 'P', 'Cirebon', '2001-01-04', 'Islam', '87829152395', '', '', '1', '1', 'SS11522573'),
('11522574', '9995150606', 'ICHSAN MOCHAMMAD FACHRURROJI', 'L', 'Cirebon', '1999-11-14', 'Islam', '', '', '', '0', '1', 'SS11522574'),
('11522575', '6237822', 'ILHAM SUBHI IBRAHIM', 'L', 'Cirebon', '2000-03-17', 'Islam', '', '', '', '1', '1', 'SS11522575'),
('11522576', '5114777', 'INDAH HASANAH', 'P', 'Cirebon', '2000-07-27', 'Islam', '89512840664', '', '', '0', '1', 'SS11522576'),
('11522577', '6880030', 'IQBAL SARIFUDIN', 'L', 'Cirebon', '2000-01-01', 'Islam', '8164878761', '', '', '1', '1', 'SS11522577'),
('11522578', '9996052817', 'IRFAN FATURRAHMAN', 'L', 'Cirebon', '1999-05-19', 'Islam', '81320457655', '', '0231-48307', '1', '1', 'SS11522578'),
('11522579', '6578151', 'IZET AHMAD FAHREZI', 'L', 'Cirebon', '2000-11-14', 'Islam', '81324665665', '', '', '0', '1', 'SS11522579'),
('11522580', '2954594', 'LUQMAN IMAM NUR ARIEVIN', 'L', 'Cirebon', '2000-07-07', 'Islam', '', '', '', '1', '1', 'SS11522580'),
('11522581', '9994810247', 'MAULANA ISMAIL', 'L', 'Cirebon', '1999-06-15', 'Islam', '89666003063', '', '', '1', '1', 'SS11522581'),
('11522582', '5166961', 'MOCHAMAD RIZKY YANUARDI', 'L', 'Cirebon', '2000-01-24', 'Islam', '82319996765', '', '', '1', '1', 'SS11522582'),
('11522583', '8999259', 'MUHAMAD IQBAL ARDIANSYAH', 'L', 'Majalengka', '2000-01-13', 'Islam', '', '', '', '1', '1', 'SS11522583'),
('11522584', '9994968355', 'MUHAMAD ROBY AMRUHU', 'L', 'Indramayu', '1999-03-14', 'Islam', '81321443002', '', '', '0', '1', 'SS11522584'),
('11522585', '9996332758', 'MUHAMAD SAHRUDIN ADHA', 'L', 'Cirebon', '1999-04-13', 'Islam', '89606273731', '', '', '0', '1', 'SS11522585'),
('11522586', '9995990923', 'MUHAMMAD FAHDAN GUSTAFAN', 'L', 'Cirebon', '1999-08-08', 'Islam', '81395774977', '', '', '0', '1', 'SS11522586'),
('11522587', '9989118879', 'MUHAMMAD NASRULLOH PURWANTO', 'L', 'Mempawah', '1998-10-17', 'Islam', '85320909354', '', '', '1', '1', 'SS11522587'),
('11522588', '9995810042', 'NOVITA RINDIANI', 'P', 'Cirebon', '1999-11-06', 'Islam', '89660866360', '', '', '1', '1', 'SS11522588'),
('11522589', '3614451', 'NUR FAUZIAH', 'P', 'Cirebon', '2000-04-21', 'Islam', '', '', '0231-48901', '1', '1', 'SS11522589'),
('11522590', '1942681', 'Rd. IKSAN DZAKY ZHAFRAN', 'L', 'Cirebon', '2000-10-07', 'Islam', '81946937054', '', '', '1', '1', 'SS11522590'),
('11522591', '17801526', 'RIFFA ALFARIDZI PRIATNA', 'L', 'Pekanbaru', '2001-05-18', 'Islam', '8179082925', '', '', '1', '1', 'SS11522591'),
('11522592', '4814494', 'RIZKI ABDILAH PUTRA', 'L', 'Cirebon', '2000-06-21', 'Islam', '87829752322', '', '', '0', '1', 'SS11522592'),
('11522593', '3033313', 'RIZQY MAULANA', 'L', 'Cirebon', '2000-06-16', 'Islam', '81324709119', '', '0231-20224', '1', '1', 'SS11522593'),
('11522594', '3951291', 'SITI FA\'ANY MASLIHAH', 'P', 'Cirebon', '2000-02-07', 'Islam', '81324489765', '', '', '1', '1', 'SS11522594'),
('11522595', '3755599', 'SITI NUR AISYAH', 'P', 'Kuningan', '2000-03-17', 'Islam', '81324005220', '', '', '1', '1', 'SS11522595'),
('11522596', '4818981', 'SITI WIWIN', 'P', 'Cirebon', '2000-02-23', 'Islam', '85294506627', '', '', '0', '1', 'SS11522596'),
('11522597', '5924476', 'TRI PRASTYA LAKSANA', 'L', 'Cirebon', '2000-10-10', 'Islam', '82121128025', '', '', '1', '1', 'SS11522597'),
('11522598', '9994810376', 'VINALDA RAAFINTA', 'P', 'Cirebon', '1999-02-02', 'Islam', '85317900059', '', '', '1', '1', 'SS11522598'),
('11522599', '3952251', 'ABI ISMAIL', 'L', 'Kuningan', '2000-03-03', 'Islam', '8992629748', '', '', '0', '1', 'SS11522599'),
('11522600', '9982667806', 'ACHMAD ALDY SUTANTO', 'L', 'Cirebon', '1998-09-01', 'Islam', '85223495384', '', '', '1', '1', 'SS11522600'),
('11522601', '4116131', 'ADEMAY ELIDA', 'P', 'Cirebon', '2000-05-05', 'Islam', '89655778134', '', '', '1', '1', 'SS11522601'),
('11522602', '3614208', 'ADITYA PRADITA', 'L', 'Cirebon', '2000-03-07', 'Islam', '8882204461', '', '', '1', '1', 'SS11522602'),
('11522603', '6237826', 'AFIFAH ADILAH', 'P', 'Cirebon', '2000-03-31', 'Islam', '89620904083', '', '', '1', '1', 'SS11522603'),
('11522604', '9999387959', 'AMRUSTIAN WIBAWA RACHMAN', 'L', 'Cirebon', '1999-10-17', 'Islam', '8817786315', '', '0231-83311', '0', '1', 'SS11522604'),
('11522605', '5589957', 'AURA CHOIRUNNISA PUTRI HARDIANTO', 'P', 'Cirebon', '2000-11-12', 'Islam', '85295813550', '', '', '1', '1', 'SS11522605'),
('11522606', '9995150419', 'BENUA KUSUMAWARDANI', 'L', 'Cirebon', '1999-09-18', 'Islam', '82219120533', '', '', '1', '1', 'SS11522606'),
('11522607', '9996092469', 'DANDI', 'L', 'Cirebon', '1999-12-05', 'Islam', '89633440342', '', '0231-91522', '0', '1', 'SS11522607'),
('11522608', '3953724', 'DEVINA VIANTIE', 'P', 'Cirebon', '2000-03-07', 'Kristen', '82318948889', '', '', '1', '1', 'SS11522608'),
('11522609', '9994209228', 'DINUL HABIB ULUL AZMI', 'L', 'Cirebon', '1999-11-20', 'Islam', '', '', '', '1', '1', 'SS11522609'),
('11522610', '11734381', 'FAUZAN ALFANI SUHENDAR', 'L', 'Cirebon', '2000-11-02', 'Islam', '89669651569', '', '', '0', '1', 'SS11522610'),
('11522611', '9996091851', 'FIRMAN SYAH', 'L', 'Cirebon', '1999-11-30', 'Islam', '89501685893', '', '', '0', '1', 'SS11522611'),
('11522612', '9995795998', 'MIFTAH CAHYA DERMAWAN', 'L', 'Cirebon', '1999-10-02', 'Islam', '', '', '', '1', '1', 'SS11522612'),
('11522613', '9745497', 'MOCHAMAD ALFIAN', 'L', 'Cirebon', '2000-05-07', 'Islam', '8122464335', '', '', '0', '1', 'SS11522613'),
('11522614', '9984353211', 'MOH. RAFIF FADILAH', 'L', 'Cirebon', '1998-11-13', 'Islam', '81214400729', '', '', '1', '1', 'SS11522614'),
('11522615', '9471745', 'MUHAMMAD RAFI NUGROHO', 'L', 'Cirebon', '2000-07-08', 'Islam', '85316475103', '', '', '0', '1', 'SS11522615'),
('11522616', '4832592', 'MUHAMMAD RIZKI', 'L', 'Cirebon', '2000-05-13', 'Islam', '89664559218', '', '', '1', '1', 'SS11522616'),
('11522617', '3952033', 'NAFILA LAREAWIST NUR FADHILLAH', 'P', 'Cirebon', '2000-04-28', 'Islam', '89520871354', '', '', '1', '1', 'SS11522617'),
('11522618', '14290', 'NUR ROSLAILY', 'P', 'Bandung', '2000-04-18', 'Islam', '82116949638', '', '', '0', '1', 'SS11522618'),
('11522619', '4422126', 'REZA ANDRIANSYAH', 'L', 'Cirebon', '2000-01-23', 'Islam', '87728988484', '', '', '0', '1', 'SS11522619'),
('11522620', '4578301', 'REZA NUR BEKTI', 'L', 'Cirebon', '2000-03-06', 'Islam', '8882251172', '', '', '1', '1', 'SS11522620'),
('11522621', '9410213', 'RIDHO PANGESTU', 'L', 'Cirebon', '2000-08-15', 'Islam', '89670990677', '', '', '0', '1', 'SS11522621'),
('11522622', '4575731', 'SAMSUL NUR', 'L', 'Cirebon', '2000-11-14', 'Islam', '89620999650', '', '', '1', '1', 'SS11522622'),
('11522623', '153080515', 'SHODIQ DAFFA ANDRIAN', 'L', 'Cirebon', '2015-07-27', 'Islam', '82331223123', '', '0231-32099', '0', '1', 'SS11522623'),
('11522624', '9995799807', 'SUCI WULANDARI', 'P', 'Cirebon', '1999-12-19', 'Islam', '89622772319', '', '', '1', '1', 'SS11522624'),
('11522625', '3614715', 'SYAFRI SAPUTRA', 'L', 'Cirebon', '2000-04-15', 'Islam', '', '', '', '1', '1', 'SS11522625'),
('11522626', '1396490', 'TAUFIK RIFKY IKHSAN', 'L', 'Cirebon', '2000-03-19', 'Islam', '81320066076', '', '', '0', '1', 'SS11522626'),
('11522627', '9359257', 'VISKAL BAYUAJI', 'L', 'Cirebon', '2000-09-16', 'Islam', '8986260729', '', '', '1', '1', 'SS11522627'),
('11522628', '6237840', 'WAHYU SETIAWAN', 'L', 'Cirebon', '2000-05-06', 'Islam', '81324303954', '', '', '1', '1', 'SS11522628'),
('11522629', '4297782', 'WAIS AL QORNEY', 'L', 'Palembang', '2000-06-14', 'Islam', '87729571593', '', '', '1', '1', 'SS11522629'),
('11522630', '9996110644', 'WISNU ADIMAS', 'L', 'Cirebon', '1999-11-12', 'Islam', '89665092171', '', '', '1', '1', 'SS11522630'),
('11522631', '9903259856', 'YEPPY MANGUN PUSPITAJUDIN', 'L', 'Cirebon', '1999-11-11', 'Islam', '82127891071', '', '', '0', '1', 'SS11522631'),
('11522632', '16167379', 'YOUSHUA NONO PALILING', 'L', 'Jayapura', '2001-08-31', 'Kristen', '82319378484', '', '', '1', '1', 'SS11522632'),
('11522633', '3052579', 'ACHMAD TRICHOERI MUKTI', 'L', 'Cirebon', '2000-11-15', 'Islam', '', '', '0231-48350', '1', '1', 'SS11522633'),
('11522634', '5894491', 'ADITYA AGUNG RUDI PERMANA', 'L', 'Cirebon', '2000-03-29', 'Islam', '8987864319', '', '', '0', '1', 'SS11522634'),
('11522635', '10710889', 'AKBAR FAUZI IMANUDIN', 'L', 'Cirebon', '2001-01-01', 'Islam', '89634103685', '', '', '1', '1', 'SS11522635'),
('11522636', '3614380', 'AL MUFADZ AFIIN', 'L', 'Cirebon', '2000-01-14', 'Islam', '81324377171', '', '', '1', '1', 'SS11522636'),
('11522637', '9995152617', 'ANDIKA ADITAMA PRASETIO', 'L', 'Cirebon', '1999-12-25', 'Islam', '89513115601', '', '', '1', '1', 'SS11522637'),
('11522638', '7258300', 'ANUGRAH AGUNG YUDISTIRA', 'L', 'Tangerang', '2000-11-09', 'Islam', '82316688915', '', '', '1', '1', 'SS11522638'),
('11522639', '1179916', 'ARFAN MAULANA SUPENDI', 'L', 'Cirebon', '2000-04-15', 'Islam', '8998000368', '', '', '1', '1', 'SS11522639'),
('11522640', '3953734', 'DIKY PRIHAJI', 'L', 'Cirebon', '2000-03-17', 'Islam', '8978418068', '', '', '1', '1', 'SS11522640'),
('11522641', '9999049876', 'ERIK RIPANGGA', 'L', 'Cirebon', '1999-11-13', 'Islam', '82316047874', '', '', '1', '1', 'SS11522641'),
('11522642', '3614178', 'GAZHA FLORYAN', 'L', 'Solok', '2000-02-13', 'Islam', '81313192010', '', '', '1', '1', 'SS11522642'),
('11522643', '7088645', 'HANIFA MAULIDYA', 'P', 'Cirebon', '2000-06-07', 'Islam', '82119310871', '', '', '1', '1', 'SS11522643'),
('11522644', '3951454', 'INTAN MULYANI', 'P', 'Cirebon', '2000-05-06', 'Islam', '89696691436', '', '', '1', '1', 'SS11522644'),
('11522645', '4578146', 'KEMAN NUR ROHMAN', 'L', 'Cirebon', '2000-05-01', 'Islam', '85223260181', '', '', '0', '1', 'SS11522645'),
('11522646', '9985616528', 'LIKE DWI LESTARI', 'P', 'Cirebon', '1998-11-28', 'Islam', '89506370846', '', '', '0', '1', 'SS11522646'),
('11522647', '4115590', 'LILIA MAULA ARIANI', 'P', 'Cirebon', '2000-06-04', 'Islam', '85224736635', '', '', '1', '1', 'SS11522647'),
('11522648', '9994799625', 'LUCKY INDRIAWAN', 'L', 'Cirebon', '1999-10-08', 'Islam', '89629508427', '', '', '1', '1', 'SS11522648'),
('11522649', '4795010', 'MAKHFUD FATAH', 'L', 'Cirebon', '2000-03-25', 'Islam', '89686703503', '', '', '0', '1', 'SS11522649'),
('11522650', '3614432', 'MOCH. SUGIANDI', 'L', 'Cirebon', '2000-04-28', 'Islam', '', '', '', '1', '1', 'SS11522650'),
('11522651', '1512996', 'MUHAMMAD RIZKY FADILLAH', 'L', 'Kuningan', '2000-07-12', 'Islam', '8129043070', '', '', '1', '1', 'SS11522651'),
('11522652', '7009912', 'MUHAMAD ADE CRISNA', 'L', 'Cirebon', '2000-04-16', 'Islam', '87829714999', '', '', '1', '1', 'SS11522652'),
('11522653', '4765879', 'MUHAMAD ILHAM FARIS', 'L', 'Cianjur', '2000-09-07', 'Islam', '8815177225', '', '', '0', '1', 'SS11522653'),
('11522654', '9995797109', 'MUHAMAD TAUFIK HIDAYAT', 'L', 'Cirebon', '1999-06-23', 'Islam', '85224371871', '', '', '1', '1', 'SS11522654'),
('11522655', '9648660', 'MUHAMMAD AERLANGGA DWIKY SAPUTRA', 'L', 'Cirebon', '2000-05-23', 'Islam', '89662173071', '', '', '0', '1', 'SS11522655'),
('11522656', '9994720155', 'MOCH. IBNU AZHAR', 'L', 'Cirebon', '1999-08-01', 'Islam', '', '', '', '1', '1', 'SS11522656'),
('11522657', '6341796', 'MUHAMMAD TAUFIK HIDAYAT', 'L', 'Cirebon', '2000-05-19', 'Islam', '8970003200', '', '', '1', '1', 'SS11522657'),
('11522658', '6360530', 'NOVA ARIA KIRANA', 'L', 'Jakarta', '2000-11-01', 'Islam', '85888220333', '', '8588234225', '0', '1', 'SS11522658'),
('11522659', '3951463', 'NUNUNG FITRIYANI', 'P', 'Cirebon', '2000-12-31', 'Islam', '', '', '', '1', '1', 'SS11522659'),
('11522660', '9996980282', 'PUJI AGUSTINA', 'P', 'Cirebon', '1999-08-12', 'Islam', '89520092120', '', '', '1', '1', 'SS11522660'),
('11522661', '9186731', 'RADEN FLERIDHO NUGROHO', 'L', 'Cirebon', '2000-11-17', 'Islam', '', '', '', '1', '1', 'SS11522661'),
('11522662', '19190705', 'RADEN MAS RIVALDI DJAJADININGRAT', 'L', 'Karawang', '2001-04-24', 'Islam', '85222402859', '', '', '1', '1', 'SS11522662'),
('11522663', '3849450', 'RENDRA PUTRA FATHUR', 'L', 'Jakarta', '2000-05-16', 'Islam', '85797569990', '', '', '1', '1', 'SS11522663'),
('11522664', '3614231', 'RIZAL AMI PRASETIA', 'L', 'Cirebon', '2000-02-29', 'Islam', '81324546101', '', '', '1', '1', 'SS11522664'),
('11522665', '4854976', 'SELVI FELIYANTI', 'P', 'Cirebon', '2000-08-28', 'Islam', '89639847182', '', '', '1', '1', 'SS11522665'),
('11522666', '9983750673', 'SITI PARIDA', 'P', 'Cirebon', '1998-08-10', 'Islam', '83824750053', '', '', '0', '1', 'SS11522666'),
('11522667', '9996110598', 'SURYANTORO TEJA KUSUMA', 'L', 'Cirebon', '1999-11-21', 'Islam', '87829433916', '', '', '1', '1', 'SS11522667'),
('11522668', '9994810971', 'VELLYANA KASMAN', 'P', 'Cirebon', '1999-12-31', 'Islam', '8997329673', '', '', '1', '1', 'SS11522668'),
('11522669', '4423741', 'WAHYU CHRISTIADY TAMBA', 'L', 'Bontang', '2000-07-24', 'Islam', '81347991763', '', '', '0', '1', 'SS11522669'),
('21421702', '9977798892', 'INTAN NUR CHAHYA', 'P', 'Bogor', '1997-12-12', 'Islam', '8978988768', '', '', '0', '1', 'SS21421702'),
('21422468', '9978197210', 'SUTAN RYAN AMARULLAH', 'L', 'Karawang', '1997-03-11', 'Islam', '87879015894', '', '', '1', '1', 'SS21422468');

-- --------------------------------------------------------

--
-- Table structure for table `peserta_didik_kelas`
--

CREATE TABLE `peserta_didik_kelas` (
  `NIPD` char(8) NOT NULL,
  `rombel_id` char(7) NOT NULL,
  `tahun_ajaran_id` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peserta_didik_kelas`
--

INSERT INTO `peserta_didik_kelas` (`NIPD`, `rombel_id`, `tahun_ajaran_id`) VALUES
('11522599', 'XRPL1', '1516'),
('11522600', 'XRPL1', '1516'),
('11522601', 'XRPL1', '1516'),
('11522602', 'XRPL1', '1516'),
('11522603', 'XRPL1', '1516'),
('11522604', 'XRPL1', '1516'),
('11522605', 'XRPL1', '1516'),
('11522606', 'XRPL1', '1516'),
('11522607', 'XRPL1', '1516'),
('11522608', 'XRPL1', '1516'),
('11522609', 'XRPL1', '1516'),
('11522610', 'XRPL1', '1516'),
('11522611', 'XRPL1', '1516'),
('11522612', 'XRPL1', '1516'),
('11522613', 'XRPL1', '1516'),
('11522614', 'XRPL1', '1516'),
('11522615', 'XRPL1', '1516'),
('11522616', 'XRPL1', '1516'),
('11522617', 'XRPL1', '1516'),
('11522618', 'XRPL1', '1516'),
('11522619', 'XRPL1', '1516'),
('11522620', 'XRPL1', '1516'),
('11522621', 'XRPL1', '1516'),
('11522622', 'XRPL1', '1516'),
('11522623', 'XRPL1', '1516'),
('11522624', 'XRPL1', '1516'),
('11522625', 'XRPL1', '1516'),
('11522626', 'XRPL1', '1516'),
('11522627', 'XRPL1', '1516'),
('11522628', 'XRPL1', '1516'),
('11522629', 'XRPL1', '1516'),
('11522630', 'XRPL1', '1516'),
('11522631', 'XRPL1', '1516'),
('11522632', 'XRPL1', '1516'),
('11422435', 'XRPL1', '1516'),
('11522633', 'XRPL2', '1516'),
('11522634', 'XRPL2', '1516'),
('11522635', 'XRPL2', '1516'),
('11522636', 'XRPL2', '1516'),
('11522637', 'XRPL2', '1516'),
('11522638', 'XRPL2', '1516'),
('11522639', 'XRPL2', '1516'),
('11522640', 'XRPL2', '1516'),
('11522641', 'XRPL2', '1516'),
('11522642', 'XRPL2', '1516'),
('11522643', 'XRPL2', '1516'),
('11522644', 'XRPL2', '1516'),
('11522645', 'XRPL2', '1516'),
('11522646', 'XRPL2', '1516'),
('11522647', 'XRPL2', '1516'),
('11522648', 'XRPL2', '1516'),
('11522649', 'XRPL2', '1516'),
('11522656', 'XRPL2', '1516'),
('11522650', 'XRPL2', '1516'),
('11522652', 'XRPL2', '1516'),
('11522653', 'XRPL2', '1516'),
('11522654', 'XRPL2', '1516'),
('11522655', 'XRPL2', '1516'),
('11522651', 'XRPL2', '1516'),
('11522657', 'XRPL2', '1516'),
('11522658', 'XRPL2', '1516'),
('11522659', 'XRPL2', '1516'),
('11522660', 'XRPL2', '1516'),
('11522661', 'XRPL2', '1516'),
('11522662', 'XRPL2', '1516'),
('11522663', 'XRPL2', '1516'),
('11522664', 'XRPL2', '1516'),
('11522665', 'XRPL2', '1516'),
('11522666', 'XRPL2', '1516'),
('11522667', 'XRPL2', '1516'),
('11522668', 'XRPL2', '1516'),
('11522669', 'XRPL2', '1516'),
('11522518', 'XTKJ1', '1516'),
('11522519', 'XTKJ1', '1516'),
('11522520', 'XTKJ1', '1516'),
('11522521', 'XTKJ1', '1516'),
('11522522', 'XTKJ1', '1516'),
('11522523', 'XTKJ1', '1516'),
('11522524', 'XTKJ1', '1516'),
('11522525', 'XTKJ1', '1516'),
('11522526', 'XTKJ1', '1516'),
('11522527', 'XTKJ1', '1516'),
('11522528', 'XTKJ1', '1516'),
('11522529', 'XTKJ1', '1516'),
('11522530', 'XTKJ1', '1516'),
('11522531', 'XTKJ1', '1516'),
('11522532', 'XTKJ1', '1516'),
('11522533', 'XTKJ1', '1516'),
('11522534', 'XTKJ1', '1516'),
('11522535', 'XTKJ1', '1516'),
('11522536', 'XTKJ1', '1516'),
('11522537', 'XTKJ1', '1516'),
('11522539', 'XTKJ1', '1516'),
('11522540', 'XTKJ1', '1516'),
('11522542', 'XTKJ1', '1516'),
('11522544', 'XTKJ1', '1516'),
('11522538', 'XTKJ1', '1516'),
('11522543', 'XTKJ1', '1516'),
('11522541', 'XTKJ1', '1516'),
('11522545', 'XTKJ1', '1516'),
('11522546', 'XTKJ1', '1516'),
('11522547', 'XTKJ1', '1516'),
('11522548', 'XTKJ1', '1516'),
('11522549', 'XTKJ1', '1516'),
('11522550', 'XTKJ1', '1516'),
('11522551', 'XTKJ1', '1516'),
('11522552', 'XTKJ1', '1516'),
('11522553', 'XTKJ1', '1516'),
('11522554', 'XTKJ1', '1516'),
('11522555', 'XTKJ1', '1516'),
('11522556', 'XTKJ1', '1516'),
('11522557', 'XTKJ1', '1516'),
('11522558', 'XTKJ1', '1516'),
('11422391', 'XTKJ1', '1516'),
('11522559', 'XTKJ2', '1516'),
('11522560', 'XTKJ2', '1516'),
('11522561', 'XTKJ2', '1516'),
('11522562', 'XTKJ2', '1516'),
('11522563', 'XTKJ2', '1516'),
('11522564', 'XTKJ2', '1516'),
('11522565', 'XTKJ2', '1516'),
('11522566', 'XTKJ2', '1516'),
('11522567', 'XTKJ2', '1516'),
('11522568', 'XTKJ2', '1516'),
('11522569', 'XTKJ2', '1516'),
('11522570', 'XTKJ2', '1516'),
('11522571', 'XTKJ2', '1516'),
('11522572', 'XTKJ2', '1516'),
('11522573', 'XTKJ2', '1516'),
('11522574', 'XTKJ2', '1516'),
('11522575', 'XTKJ2', '1516'),
('11522576', 'XTKJ2', '1516'),
('11522577', 'XTKJ2', '1516'),
('11522578', 'XTKJ2', '1516'),
('11522579', 'XTKJ2', '1516'),
('11522580', 'XTKJ2', '1516'),
('11522581', 'XTKJ2', '1516'),
('11522582', 'XTKJ2', '1516'),
('11522583', 'XTKJ2', '1516'),
('11522584', 'XTKJ2', '1516'),
('11522585', 'XTKJ2', '1516'),
('11522586', 'XTKJ2', '1516'),
('11522587', 'XTKJ2', '1516'),
('11522588', 'XTKJ2', '1516'),
('11522589', 'XTKJ2', '1516'),
('11522590', 'XTKJ2', '1516'),
('11522591', 'XTKJ2', '1516'),
('11522592', 'XTKJ2', '1516'),
('11522593', 'XTKJ2', '1516'),
('11522594', 'XTKJ2', '1516'),
('11522595', 'XTKJ2', '1516'),
('11522596', 'XTKJ2', '1516'),
('11522597', 'XTKJ2', '1516'),
('11522598', 'XTKJ2', '1516'),
('11422429', 'XIRPL', '1516'),
('11422430', 'XIRPL', '1516'),
('11422431', 'XIRPL', '1516'),
('11422432', 'XIRPL', '1516'),
('11422433', 'XIRPL', '1516'),
('11422436', 'XIRPL', '1516'),
('11422437', 'XIRPL', '1516'),
('11422438', 'XIRPL', '1516'),
('11422439', 'XIRPL', '1516'),
('11422440', 'XIRPL', '1516'),
('11422441', 'XIRPL', '1516'),
('11422442', 'XIRPL', '1516'),
('11422443', 'XIRPL', '1516'),
('11422444', 'XIRPL', '1516'),
('11422445', 'XIRPL', '1516'),
('11422447', 'XIRPL', '1516'),
('11422448', 'XIRPL', '1516'),
('11422449', 'XIRPL', '1516'),
('11422450', 'XIRPL', '1516'),
('11422451', 'XIRPL', '1516'),
('11422452', 'XIRPL', '1516'),
('11422454', 'XIRPL', '1516'),
('11422455', 'XIRPL', '1516'),
('11422456', 'XIRPL', '1516'),
('11422457', 'XIRPL', '1516'),
('11422458', 'XIRPL', '1516'),
('11422459', 'XIRPL', '1516'),
('11422460', 'XIRPL', '1516'),
('11422461', 'XIRPL', '1516'),
('11422462', 'XIRPL', '1516'),
('11422463', 'XIRPL', '1516'),
('11422464', 'XIRPL', '1516'),
('11422465', 'XIRPL', '1516'),
('11422466', 'XIRPL', '1516'),
('11422467', 'XIRPL', '1516'),
('11422349', 'XITKJ1', '1516'),
('11422350', 'XITKJ1', '1516'),
('11422351', 'XITKJ1', '1516'),
('11422352', 'XITKJ1', '1516'),
('11422353', 'XITKJ1', '1516'),
('11422354', 'XITKJ1', '1516'),
('11422355', 'XITKJ1', '1516'),
('11422356', 'XITKJ1', '1516'),
('11422357', 'XITKJ1', '1516'),
('11422358', 'XITKJ1', '1516'),
('11422359', 'XITKJ1', '1516'),
('11422360', 'XITKJ1', '1516'),
('11422361', 'XITKJ1', '1516'),
('11422362', 'XITKJ1', '1516'),
('11422363', 'XITKJ1', '1516'),
('11422364', 'XITKJ1', '1516'),
('11422365', 'XITKJ1', '1516'),
('11422366', 'XITKJ1', '1516'),
('11422367', 'XITKJ1', '1516'),
('11422369', 'XITKJ1', '1516'),
('11422370', 'XITKJ1', '1516'),
('11422371', 'XITKJ1', '1516'),
('11422372', 'XITKJ1', '1516'),
('11422373', 'XITKJ1', '1516'),
('11422376', 'XITKJ1', '1516'),
('11422377', 'XITKJ1', '1516'),
('11422378', 'XITKJ1', '1516'),
('11422379', 'XITKJ1', '1516'),
('11422380', 'XITKJ1', '1516'),
('11422381', 'XITKJ1', '1516'),
('11422382', 'XITKJ1', '1516'),
('11422383', 'XITKJ1', '1516'),
('11422384', 'XITKJ1', '1516'),
('11422385', 'XITKJ1', '1516'),
('11422386', 'XITKJ1', '1516'),
('11422387', 'XITKJ1', '1516'),
('11321683', 'XITKJ1', '1516'),
('11422388', 'XITKJ2', '1516'),
('11422389', 'XITKJ2', '1516'),
('11422392', 'XITKJ2', '1516'),
('11422393', 'XITKJ2', '1516'),
('11422394', 'XITKJ2', '1516'),
('11422395', 'XITKJ2', '1516'),
('11422396', 'XITKJ2', '1516'),
('11422397', 'XITKJ2', '1516'),
('11422398', 'XITKJ2', '1516'),
('11422399', 'XITKJ2', '1516'),
('11422400', 'XITKJ2', '1516'),
('11422401', 'XITKJ2', '1516'),
('11422402', 'XITKJ2', '1516'),
('11422403', 'XITKJ2', '1516'),
('11422404', 'XITKJ2', '1516'),
('11422405', 'XITKJ2', '1516'),
('11422406', 'XITKJ2', '1516'),
('11422407', 'XITKJ2', '1516'),
('11422408', 'XITKJ2', '1516'),
('11422409', 'XITKJ2', '1516'),
('11422410', 'XITKJ2', '1516'),
('11422411', 'XITKJ2', '1516'),
('11422412', 'XITKJ2', '1516'),
('11422413', 'XITKJ2', '1516'),
('11422414', 'XITKJ2', '1516'),
('11422415', 'XITKJ2', '1516'),
('11422416', 'XITKJ2', '1516'),
('11422417', 'XITKJ2', '1516'),
('11422418', 'XITKJ2', '1516'),
('11422419', 'XITKJ2', '1516'),
('11422421', 'XITKJ2', '1516'),
('11422422', 'XITKJ2', '1516'),
('11422423', 'XITKJ2', '1516'),
('11422424', 'XITKJ2', '1516'),
('11422425', 'XITKJ2', '1516'),
('11422426', 'XITKJ2', '1516'),
('11422428', 'XITKJ2', '1516'),
('11321590', 'XIIRPL', '1516'),
('11321594', 'XIIRPL', '1516'),
('11321666', 'XIIRPL', '1516'),
('11321667', 'XIIRPL', '1516'),
('11321598', 'XIIRPL', '1516'),
('11321633', 'XIIRPL', '1516'),
('11321635', 'XIIRPL', '1516'),
('11321674', 'XIIRPL', '1516'),
('11321603', 'XIIRPL', '1516'),
('11321605', 'XIIRPL', '1516'),
('11321607', 'XIIRPL', '1516'),
('11321608', 'XIIRPL', '1516'),
('11321609', 'XIIRPL', '1516'),
('11321679', 'XIIRPL', '1516'),
('11321613', 'XIIRPL', '1516'),
('11321645', 'XIIRPL', '1516'),
('11321646', 'XIIRPL', '1516'),
('11321614', 'XIIRPL', '1516'),
('11321684', 'XIIRPL', '1516'),
('11321685', 'XIIRPL', '1516'),
('11321652', 'XIIRPL', '1516'),
('11321654', 'XIIRPL', '1516'),
('11321686', 'XIIRPL', '1516'),
('11321687', 'XIIRPL', '1516'),
('11321689', 'XIIRPL', '1516'),
('11321690', 'XIIRPL', '1516'),
('11321691', 'XIIRPL', '1516'),
('11321617', 'XIIRPL', '1516'),
('11321618', 'XIIRPL', '1516'),
('11321619', 'XIIRPL', '1516'),
('11321620', 'XIIRPL', '1516'),
('11321693', 'XIIRPL', '1516'),
('11321660', 'XIIRPL', '1516'),
('21422468', 'XIIRPL', '1516'),
('11321589', 'XIITKJ1', '1516'),
('11321625', 'XIITKJ1', '1516'),
('11321591', 'XIITKJ1', '1516'),
('11321627', 'XIITKJ1', '1516'),
('11321595', 'XIITKJ1', '1516'),
('11321628', 'XIITKJ1', '1516'),
('11321600', 'XIITKJ1', '1516'),
('11321630', 'XIITKJ1', '1516'),
('11321632', 'XIITKJ1', '1516'),
('11321636', 'XIITKJ1', '1516'),
('11321637', 'XIITKJ1', '1516'),
('11321602', 'XIITKJ1', '1516'),
('11321639', 'XIITKJ1', '1516'),
('11321604', 'XIITKJ1', '1516'),
('11321606', 'XIITKJ1', '1516'),
('11321641', 'XIITKJ1', '1516'),
('11321611', 'XIITKJ1', '1516'),
('11321612', 'XIITKJ1', '1516'),
('11321643', 'XIITKJ1', '1516'),
('11321644', 'XIITKJ1', '1516'),
('11321649', 'XIITKJ1', '1516'),
('11321653', 'XIITKJ1', '1516'),
('11321655', 'XIITKJ1', '1516'),
('11321658', 'XIITKJ1', '1516'),
('11321662', 'XIITKJ1', '1516'),
('11321665', 'XIITKJ1', '1516'),
('11321670', 'XIITKJ1', '1516'),
('11321671', 'XIITKJ1', '1516'),
('11321673', 'XIITKJ1', '1516'),
('21421702', 'XIITKJ1', '1516'),
('11321680', 'XIITKJ1', '1516'),
('11321682', 'XIITKJ1', '1516'),
('11321692', 'XIITKJ1', '1516'),
('11321621', 'XIITKJ1', '1516'),
('11321695', 'XIITKJ1', '1516'),
('11321663', 'XIITKJ2', '1516'),
('11321664', 'XIITKJ2', '1516'),
('11321592', 'XIITKJ2', '1516'),
('11321626', 'XIITKJ2', '1516'),
('11321668', 'XIITKJ2', '1516'),
('11321596', 'XIITKJ2', '1516'),
('11321597', 'XIITKJ2', '1516'),
('11321629', 'XIITKJ2', '1516'),
('11321599', 'XIITKJ2', '1516'),
('11321669', 'XIITKJ2', '1516'),
('11321634', 'XIITKJ2', '1516'),
('11321672', 'XIITKJ2', '1516'),
('11321638', 'XIITKJ2', '1516'),
('11321640', 'XIITKJ2', '1516'),
('11321675', 'XIITKJ2', '1516'),
('11321676', 'XIITKJ2', '1516'),
('11321610', 'XIITKJ2', '1516'),
('11321642', 'XIITKJ2', '1516'),
('11321647', 'XIITKJ2', '1516'),
('11321648', 'XIITKJ2', '1516'),
('11321650', 'XIITKJ2', '1516'),
('11321651', 'XIITKJ2', '1516'),
('11321688', 'XIITKJ2', '1516'),
('11321615', 'XIITKJ2', '1516'),
('11321616', 'XIITKJ2', '1516'),
('11321656', 'XIITKJ2', '1516'),
('11321622', 'XIITKJ2', '1516'),
('11321694', 'XIITKJ2', '1516'),
('11321657', 'XIITKJ2', '1516'),
('11321623', 'XIITKJ2', '1516'),
('11321631', 'XIITKJ2', '1516'),
('11321696', 'XIITKJ2', '1516');

-- --------------------------------------------------------

--
-- Table structure for table `program_keahlian`
--

CREATE TABLE `program_keahlian` (
  `program_keahlian_id` char(3) NOT NULL,
  `program_keahlian_nama` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program_keahlian`
--

INSERT INTO `program_keahlian` (`program_keahlian_id`, `program_keahlian_nama`) VALUES
('TIK', 'Teknik Komputer dan Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `rombel`
--

CREATE TABLE `rombel` (
  `rombel_id` char(7) NOT NULL,
  `rombel_nama` varchar(35) NOT NULL,
  `rombel_tingkat` tinyint(1) NOT NULL,
  `paket_keahlian_id` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rombel`
--

INSERT INTO `rombel` (`rombel_id`, `rombel_nama`, `rombel_tingkat`, `paket_keahlian_id`) VALUES
('XIIRPL', 'XII Rekayasa Perangkat Lunak', 3, 'RPL'),
('XIITKJ1', 'XII Teknik Komputer dan Jaringan 1', 3, 'TKJ'),
('XIITKJ2', 'XII Teknik Komputer dan Jaringan 2', 3, 'TKJ'),
('XIRPL', 'XI Rekayasa Perangkat Lunak', 2, 'RPL'),
('XITKJ1', 'XI Teknik Komputer dan Jaringan 1', 2, 'TKJ'),
('XITKJ2', 'XI Teknik Komputer dan Jaringan 2', 2, 'TKJ'),
('XRPL1', 'X Rekayasa Perangkat Lunak 1', 1, 'RPL'),
('XRPL2', 'X Rekayasa Perangkat Lunak 2', 1, 'RPL'),
('XTKJ1', 'X Teknik Komputer dan Jaringan 1', 1, 'TKJ'),
('XTKJ2', 'X Teknik Komputer dan Jaringan 2', 1, 'TKJ');

-- --------------------------------------------------------

--
-- Table structure for table `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `tahun_ajaran_id` char(4) NOT NULL,
  `tahun_ajaran_nama` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tahun_ajaran`
--

INSERT INTO `tahun_ajaran` (`tahun_ajaran_id`, `tahun_ajaran_nama`) VALUES
('1516', '2015/2016'),
('1617', '2016/2017');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` varchar(10) NOT NULL,
  `tunggakan_id` varchar(10) NOT NULL,
  `transaksi_jumlah` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `user_id` char(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `tunggakan_id`, `transaksi_jumlah`, `tanggal_transaksi`, `user_id`) VALUES
('TR-4', 'TG-42', 250000, '2019-07-10', 'admin'),
('TR-3', '', 125000, '2019-06-22', ''),
('TR-2', 'TG-15', 125000, '2019-06-22', 'admin'),
('TR-1', 'TG-13', 100000, '2016-06-11', 'michael');

-- --------------------------------------------------------

--
-- Table structure for table `tunggakan`
--

CREATE TABLE `tunggakan` (
  `tunggakan_id` varchar(10) NOT NULL,
  `kategori_id` varchar(6) NOT NULL,
  `NIPD` char(8) NOT NULL,
  `jumlah` int(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tunggakan`
--

INSERT INTO `tunggakan` (`tunggakan_id`, `kategori_id`, `NIPD`, `jumlah`) VALUES
('TG-42', 'KT-003', '11321690', 500000),
('TG-41', 'KT-002', '11321690', 2100000),
('TG-40', 'KT-001', '11321690', 125000),
('TG-39', 'KT-001', '11321690', 125000),
('TG-38', 'KT-001', '11321690', 125000),
('TG-37', 'KT-001', '11321690', 125000),
('TG-36', 'KT-001', '11321690', 125000),
('TG-35', 'KT-001', '11321690', 125000),
('TG-34', 'KT-001', '11321690', 125000),
('TG-33', 'KT-001', '11321690', 125000),
('TG-32', 'KT-001', '11321690', 125000),
('TG-31', 'KT-001', '11321690', 125000),
('TG-30', 'KT-001', '11321690', 125000),
('TG-29', 'KT-001', '11321690', 125000),
('TG-28', 'KT-003', '11321590', 500000),
('TG-27', 'KT-002', '11321590', 2100000),
('TG-26', 'KT-001', '11321590', 125000),
('TG-25', 'KT-001', '11321590', 125000),
('TG-24', 'KT-001', '11321590', 125000),
('TG-23', 'KT-001', '11321590', 125000),
('TG-22', 'KT-001', '11321590', 125000),
('TG-21', 'KT-001', '11321590', 125000),
('TG-20', 'KT-001', '11321590', 125000),
('TG-19', 'KT-001', '11321590', 125000),
('TG-18', 'KT-001', '11321590', 125000),
('TG-17', 'KT-001', '11321590', 125000),
('TG-16', 'KT-001', '11321590', 125000),
('TG-15', 'KT-001', '11321590', 125000),
('TG-14', 'KT-003', '11321589', 500000),
('TG-13', 'KT-002', '11321589', 2100000),
('TG-12', 'KT-001', '11321589', 125000),
('TG-11', 'KT-001', '11321589', 125000),
('TG-10', 'KT-001', '11321589', 125000),
('TG-9', 'KT-001', '11321589', 125000),
('TG-8', 'KT-001', '11321589', 125000),
('TG-7', 'KT-001', '11321589', 125000),
('TG-6', 'KT-001', '11321589', 125000),
('TG-5', 'KT-001', '11321589', 125000),
('TG-4', 'KT-001', '11321589', 125000),
('TG-3', 'KT-001', '11321589', 125000),
('TG-2', 'KT-001', '11321589', 125000),
('TG-1', 'KT-001', '11321589', 125000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` char(10) NOT NULL,
  `username` char(18) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `level` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `level`) VALUES
('admin', 'admin', '123', 'admin'),
('albert', 'Albert', 'qwerty', 'admin'),
('guru', 'guru', 'qwerty', 'SS'),
('michael', 'michael', 'hhc617eu18', 'admin'),
('SS11321589', '11321589', 'siswa', 'SS'),
('SS11321590', '11321590', 'siswa', 'SS'),
('SS11321591', '11321591', 'siswa', 'SS'),
('SS11321592', '11321592', 'siswa', 'SS'),
('SS11321594', '11321594', 'siswa', 'SS'),
('SS11321595', '11321595', 'siswa', 'SS'),
('SS11321596', '11321596', 'siswa', 'SS'),
('SS11321597', '11321597', 'siswa', 'SS'),
('SS11321598', '11321598', 'siswa', 'SS'),
('SS11321599', '11321599', 'siswa', 'SS'),
('SS11321600', '11321600', 'siswa', 'SS'),
('SS11321602', '11321602', 'siswa', 'SS'),
('SS11321603', '11321603', 'siswa', 'SS'),
('SS11321604', '11321604', 'siswa', 'SS'),
('SS11321605', '11321605', 'siswa', 'SS'),
('SS11321606', '11321606', 'siswa', 'SS'),
('SS11321607', '11321607', 'siswa', 'SS'),
('SS11321608', '11321608', 'siswa', 'SS'),
('SS11321609', '11321609', 'siswa', 'SS'),
('SS11321610', '11321610', 'siswa', 'SS'),
('SS11321611', '11321611', 'siswa', 'SS'),
('SS11321612', '11321612', 'siswa', 'SS'),
('SS11321613', '11321613', 'siswa', 'SS'),
('SS11321614', '11321614', 'siswa', 'SS'),
('SS11321615', '11321615', 'siswa', 'SS'),
('SS11321616', '11321616', 'siswa', 'SS'),
('SS11321617', '11321617', 'siswa', 'SS'),
('SS11321618', '11321618', 'siswa', 'SS'),
('SS11321619', '11321619', 'siswa', 'SS'),
('SS11321620', '11321620', 'siswa', 'SS'),
('SS11321621', '11321621', 'siswa', 'SS'),
('SS11321622', '11321622', 'siswa', 'SS'),
('SS11321623', '11321623', 'siswa', 'SS'),
('SS11321625', '11321625', 'siswa', 'SS'),
('SS11321626', '11321626', 'siswa', 'SS'),
('SS11321627', '11321627', 'siswa', 'SS'),
('SS11321628', '11321628', 'siswa', 'SS'),
('SS11321629', '11321629', 'siswa', 'SS'),
('SS11321630', '11321630', 'siswa', 'SS'),
('SS11321631', '11321631', 'siswa', 'SS'),
('SS11321632', '11321632', 'siswa', 'SS'),
('SS11321633', '11321633', 'siswa', 'SS'),
('SS11321634', '11321634', 'siswa', 'SS'),
('SS11321635', '11321635', 'siswa', 'SS'),
('SS11321636', '11321636', 'siswa', 'SS'),
('SS11321637', '11321637', 'siswa', 'SS'),
('SS11321638', '11321638', 'siswa', 'SS'),
('SS11321639', '11321639', 'siswa', 'SS'),
('SS11321640', '11321640', 'siswa', 'SS'),
('SS11321641', '11321641', 'siswa', 'SS'),
('SS11321642', '11321642', 'siswa', 'SS'),
('SS11321643', '11321643', 'siswa', 'SS'),
('SS11321644', '11321644', 'siswa', 'SS'),
('SS11321645', '11321645', 'siswa', 'SS'),
('SS11321646', '11321646', 'siswa', 'SS'),
('SS11321647', '11321647', 'siswa', 'SS'),
('SS11321648', '11321648', 'siswa', 'SS'),
('SS11321649', '11321649', 'siswa', 'SS'),
('SS11321650', '11321650', 'siswa', 'SS'),
('SS11321651', '11321651', 'siswa', 'SS'),
('SS11321652', '11321652', 'siswa', 'SS'),
('SS11321653', '11321653', 'siswa', 'SS'),
('SS11321654', '11321654', 'siswa', 'SS'),
('SS11321655', '11321655', 'siswa', 'SS'),
('SS11321656', '11321656', 'siswa', 'SS'),
('SS11321657', '11321657', 'siswa', 'SS'),
('SS11321658', '11321658', 'siswa', 'SS'),
('SS11321660', '11321660', 'siswa', 'SS'),
('SS11321662', '11321662', 'siswa', 'SS'),
('SS11321663', '11321663', 'siswa', 'SS'),
('SS11321664', '11321664', 'siswa', 'SS'),
('SS11321665', '11321665', 'siswa', 'SS'),
('SS11321666', '11321666', 'siswa', 'SS'),
('SS11321667', '11321667', 'siswa', 'SS'),
('SS11321668', '11321668', 'siswa', 'SS'),
('SS11321669', '11321669', 'siswa', 'SS'),
('SS11321670', '11321670', 'siswa', 'SS'),
('SS11321671', '11321671', 'siswa', 'SS'),
('SS11321672', '11321672', 'siswa', 'SS'),
('SS11321673', '11321673', 'siswa', 'SS'),
('SS11321674', '11321674', 'siswa', 'SS'),
('SS11321675', '11321675', 'siswa', 'SS'),
('SS11321676', '11321676', 'siswa', 'SS'),
('SS11321679', '11321679', 'siswa', 'SS'),
('SS11321680', '11321680', 'siswa', 'SS'),
('SS11321682', '11321682', 'siswa', 'SS'),
('SS11321683', '11321683', 'siswa', 'SS'),
('SS11321684', '11321684', 'siswa', 'SS'),
('SS11321685', '11321685', 'siswa', 'SS'),
('SS11321686', '11321686', 'siswa', 'SS'),
('SS11321687', '11321687', 'siswa', 'SS'),
('SS11321688', '11321688', 'siswa', 'SS'),
('SS11321689', '11321689', 'siswa', 'SS'),
('SS11321690', '11321690', 'siswa', 'SS'),
('SS11321691', '11321691', 'siswa', 'SS'),
('SS11321692', '11321692', 'siswa', 'SS'),
('SS11321693', '11321693', 'siswa', 'SS'),
('SS11321694', '11321694', 'siswa', 'SS'),
('SS11321695', '11321695', 'siswa', 'SS'),
('SS11321696', '11321696', 'siswa', 'SS'),
('SS11422349', '11422349', 'siswa', 'SS'),
('SS11422350', '11422350', 'siswa', 'SS'),
('SS11422351', '11422351', 'siswa', 'SS'),
('SS11422352', '11422352', 'siswa', 'SS'),
('SS11422353', '11422353', 'siswa', 'SS'),
('SS11422354', '11422354', 'siswa', 'SS'),
('SS11422355', '11422355', 'siswa', 'SS'),
('SS11422356', '11422356', 'siswa', 'SS'),
('SS11422357', '11422357', 'siswa', 'SS'),
('SS11422358', '11422358', 'siswa', 'SS'),
('SS11422359', '11422359', 'siswa', 'SS'),
('SS11422360', '11422360', 'siswa', 'SS'),
('SS11422361', '11422361', 'siswa', 'SS'),
('SS11422362', '11422362', 'siswa', 'SS'),
('SS11422363', '11422363', 'siswa', 'SS'),
('SS11422364', '11422364', 'siswa', 'SS'),
('SS11422365', '11422365', 'siswa', 'SS'),
('SS11422366', '11422366', 'siswa', 'SS'),
('SS11422367', '11422367', 'siswa', 'SS'),
('SS11422369', '11422369', 'siswa', 'SS'),
('SS11422370', '11422370', 'siswa', 'SS'),
('SS11422371', '11422371', 'siswa', 'SS'),
('SS11422372', '11422372', 'siswa', 'SS'),
('SS11422373', '11422373', 'siswa', 'SS'),
('SS11422376', '11422376', 'siswa', 'SS'),
('SS11422377', '11422377', 'siswa', 'SS'),
('SS11422378', '11422378', 'siswa', 'SS'),
('SS11422379', '11422379', 'siswa', 'SS'),
('SS11422380', '11422380', 'siswa', 'SS'),
('SS11422381', '11422381', 'siswa', 'SS'),
('SS11422382', '11422382', 'siswa', 'SS'),
('SS11422383', '11422383', 'siswa', 'SS'),
('SS11422384', '11422384', 'siswa', 'SS'),
('SS11422385', '11422385', 'siswa', 'SS'),
('SS11422386', '11422386', 'siswa', 'SS'),
('SS11422387', '11422387', 'siswa', 'SS'),
('SS11422388', '11422388', 'siswa', 'SS'),
('SS11422389', '11422389', 'siswa', 'SS'),
('SS11422391', '11422391', 'siswa', 'SS'),
('SS11422392', '11422392', 'siswa', 'SS'),
('SS11422393', '11422393', 'siswa', 'SS'),
('SS11422394', '11422394', 'siswa', 'SS'),
('SS11422395', '11422395', 'siswa', 'SS'),
('SS11422396', '11422396', 'siswa', 'SS'),
('SS11422397', '11422397', 'siswa', 'SS'),
('SS11422398', '11422398', 'siswa', 'SS'),
('SS11422399', '11422399', 'siswa', 'SS'),
('SS11422400', '11422400', 'siswa', 'SS'),
('SS11422401', '11422401', 'siswa', 'SS'),
('SS11422402', '11422402', 'siswa', 'SS'),
('SS11422403', '11422403', 'siswa', 'SS'),
('SS11422404', '11422404', 'siswa', 'SS'),
('SS11422405', '11422405', 'siswa', 'SS'),
('SS11422406', '11422406', 'siswa', 'SS'),
('SS11422407', '11422407', 'siswa', 'SS'),
('SS11422408', '11422408', 'siswa', 'SS'),
('SS11422409', '11422409', 'siswa', 'SS'),
('SS11422410', '11422410', 'siswa', 'SS'),
('SS11422411', '11422411', 'siswa', 'SS'),
('SS11422412', '11422412', 'siswa', 'SS'),
('SS11422413', '11422413', 'siswa', 'SS'),
('SS11422414', '11422414', 'siswa', 'SS'),
('SS11422415', '11422415', 'siswa', 'SS'),
('SS11422416', '11422416', 'siswa', 'SS'),
('SS11422417', '11422417', 'siswa', 'SS'),
('SS11422418', '11422418', 'siswa', 'SS'),
('SS11422419', '11422419', 'siswa', 'SS'),
('SS11422421', '11422421', 'siswa', 'SS'),
('SS11422422', '11422422', 'siswa', 'SS'),
('SS11422423', '11422423', 'siswa', 'SS'),
('SS11422424', '11422424', 'siswa', 'SS'),
('SS11422425', '11422425', 'siswa', 'SS'),
('SS11422426', '11422426', 'siswa', 'SS'),
('SS11422428', '11422428', 'siswa', 'SS'),
('SS11422429', '11422429', 'siswa', 'SS'),
('SS11422430', '11422430', 'siswa', 'SS'),
('SS11422431', '11422431', 'siswa', 'SS'),
('SS11422432', '11422432', 'siswa', 'SS'),
('SS11422433', '11422433', 'siswa', 'SS'),
('SS11422435', '11422435', 'siswa', 'SS'),
('SS11422436', '11422436', 'siswa', 'SS'),
('SS11422437', '11422437', 'siswa', 'SS'),
('SS11422438', '11422438', 'siswa', 'SS'),
('SS11422439', '11422439', 'siswa', 'SS'),
('SS11422440', '11422440', 'siswa', 'SS'),
('SS11422441', '11422441', 'siswa', 'SS'),
('SS11422442', '11422442', 'siswa', 'SS'),
('SS11422443', '11422443', 'siswa', 'SS'),
('SS11422444', '11422444', 'siswa', 'SS'),
('SS11422445', '11422445', 'siswa', 'SS'),
('SS11422447', '11422447', 'siswa', 'SS'),
('SS11422448', '11422448', 'siswa', 'SS'),
('SS11422449', '11422449', 'siswa', 'SS'),
('SS11422450', '11422450', 'siswa', 'SS'),
('SS11422451', '11422451', 'siswa', 'SS'),
('SS11422452', '11422452', 'siswa', 'SS'),
('SS11422454', '11422454', 'siswa', 'SS'),
('SS11422455', '11422455', 'siswa', 'SS'),
('SS11422456', '11422456', 'siswa', 'SS'),
('SS11422457', '11422457', 'siswa', 'SS'),
('SS11422458', '11422458', 'siswa', 'SS'),
('SS11422459', '11422459', 'siswa', 'SS'),
('SS11422460', '11422460', 'siswa', 'SS'),
('SS11422461', '11422461', 'siswa', 'SS'),
('SS11422462', '11422462', 'siswa', 'SS'),
('SS11422463', '11422463', 'siswa', 'SS'),
('SS11422464', '11422464', 'siswa', 'SS'),
('SS11422465', '11422465', 'siswa', 'SS'),
('SS11422466', '11422466', 'siswa', 'SS'),
('SS11422467', '11422467', 'siswa', 'SS'),
('SS11522518', '11522518', 'siswa', 'SS'),
('SS11522519', '11522519', 'siswa', 'SS'),
('SS11522520', '11522520', 'siswa', 'SS'),
('SS11522521', '11522521', 'siswa', 'SS'),
('SS11522522', '11522522', 'siswa', 'SS'),
('SS11522523', '11522523', 'siswa', 'SS'),
('SS11522524', '11522524', 'siswa', 'SS'),
('SS11522525', '11522525', 'siswa', 'SS'),
('SS11522526', '11522526', 'siswa', 'SS'),
('SS11522527', '11522527', 'siswa', 'SS'),
('SS11522528', '11522528', 'siswa', 'SS'),
('SS11522529', '11522529', 'siswa', 'SS'),
('SS11522530', '11522530', 'siswa', 'SS'),
('SS11522531', '11522531', 'siswa', 'SS'),
('SS11522532', '11522532', 'siswa', 'SS'),
('SS11522533', '11522533', 'siswa', 'SS'),
('SS11522534', '11522534', 'siswa', 'SS'),
('SS11522535', '11522535', 'siswa', 'SS'),
('SS11522536', '11522536', 'siswa', 'SS'),
('SS11522537', '11522537', 'siswa', 'SS'),
('SS11522538', '11522538', 'siswa', 'SS'),
('SS11522539', '11522539', 'siswa', 'SS'),
('SS11522540', '11522540', 'siswa', 'SS'),
('SS11522541', '11522541', 'siswa', 'SS'),
('SS11522542', '11522542', 'siswa', 'SS'),
('SS11522543', '11522543', 'siswa', 'SS'),
('SS11522544', '11522544', 'siswa', 'SS'),
('SS11522545', '11522545', 'siswa', 'SS'),
('SS11522546', '11522546', 'siswa', 'SS'),
('SS11522547', '11522547', 'siswa', 'SS'),
('SS11522548', '11522548', 'siswa', 'SS'),
('SS11522549', '11522549', 'siswa', 'SS'),
('SS11522550', '11522550', 'siswa', 'SS'),
('SS11522551', '11522551', 'siswa', 'SS'),
('SS11522552', '11522552', 'siswa', 'SS'),
('SS11522553', '11522553', 'siswa', 'SS'),
('SS11522554', '11522554', 'siswa', 'SS'),
('SS11522555', '11522555', 'siswa', 'SS'),
('SS11522556', '11522556', 'siswa', 'SS'),
('SS11522557', '11522557', 'siswa', 'SS'),
('SS11522558', '11522558', 'siswa', 'SS'),
('SS11522559', '11522559', 'siswa', 'SS'),
('SS11522560', '11522560', 'siswa', 'SS'),
('SS11522561', '11522561', 'siswa', 'SS'),
('SS11522562', '11522562', 'siswa', 'SS'),
('SS11522563', '11522563', 'siswa', 'SS'),
('SS11522564', '11522564', 'siswa', 'SS'),
('SS11522565', '11522565', 'siswa', 'SS'),
('SS11522566', '11522566', 'siswa', 'SS'),
('SS11522567', '11522567', 'siswa', 'SS'),
('SS11522568', '11522568', 'siswa', 'SS'),
('SS11522569', '11522569', 'siswa', 'SS'),
('SS11522570', '11522570', 'siswa', 'SS'),
('SS11522571', '11522571', 'siswa', 'SS'),
('SS11522572', '11522572', 'siswa', 'SS'),
('SS11522573', '11522573', 'siswa', 'SS'),
('SS11522574', '11522574', 'siswa', 'SS'),
('SS11522575', '11522575', 'siswa', 'SS'),
('SS11522576', '11522576', 'siswa', 'SS'),
('SS11522577', '11522577', 'siswa', 'SS'),
('SS11522578', '11522578', 'siswa', 'SS'),
('SS11522579', '11522579', 'siswa', 'SS'),
('SS11522580', '11522580', 'siswa', 'SS'),
('SS11522581', '11522581', 'siswa', 'SS'),
('SS11522582', '11522582', 'siswa', 'SS'),
('SS11522583', '11522583', 'siswa', 'SS'),
('SS11522584', '11522584', 'siswa', 'SS'),
('SS11522585', '11522585', 'siswa', 'SS'),
('SS11522586', '11522586', 'siswa', 'SS'),
('SS11522587', '11522587', 'siswa', 'SS'),
('SS11522588', '11522588', 'siswa', 'SS'),
('SS11522589', '11522589', 'siswa', 'SS'),
('SS11522590', '11522590', 'siswa', 'SS'),
('SS11522591', '11522591', 'siswa', 'SS'),
('SS11522592', '11522592', 'siswa', 'SS'),
('SS11522593', '11522593', 'siswa', 'SS'),
('SS11522594', '11522594', 'siswa', 'SS'),
('SS11522595', '11522595', 'siswa', 'SS'),
('SS11522596', '11522596', 'siswa', 'SS'),
('SS11522597', '11522597', 'siswa', 'SS'),
('SS11522598', '11522598', 'siswa', 'SS'),
('SS11522599', '11522599', 'siswa', 'SS'),
('SS11522600', '11522600', 'siswa', 'SS'),
('SS11522601', '11522601', 'siswa', 'SS'),
('SS11522602', '11522602', 'siswa', 'SS'),
('SS11522603', '11522603', 'siswa', 'SS'),
('SS11522604', '11522604', 'siswa', 'SS'),
('SS11522605', '11522605', 'siswa', 'SS'),
('SS11522606', '11522606', 'siswa', 'SS'),
('SS11522607', '11522607', 'siswa', 'SS'),
('SS11522608', '11522608', 'siswa', 'SS'),
('SS11522609', '11522609', 'siswa', 'SS'),
('SS11522610', '11522610', 'siswa', 'SS'),
('SS11522611', '11522611', 'siswa', 'SS'),
('SS11522612', '11522612', 'siswa', 'SS'),
('SS11522613', '11522613', 'siswa', 'SS'),
('SS11522614', '11522614', 'siswa', 'SS'),
('SS11522615', '11522615', 'siswa', 'SS'),
('SS11522616', '11522616', 'siswa', 'SS'),
('SS11522617', '11522617', 'siswa', 'SS'),
('SS11522618', '11522618', 'siswa', 'SS'),
('SS11522619', '11522619', 'siswa', 'SS'),
('SS11522620', '11522620', 'siswa', 'SS'),
('SS11522621', '11522621', 'siswa', 'SS'),
('SS11522622', '11522622', 'siswa', 'SS'),
('SS11522623', '11522623', 'siswa', 'SS'),
('SS11522624', '11522624', 'siswa', 'SS'),
('SS11522625', '11522625', 'siswa', 'SS'),
('SS11522626', '11522626', 'siswa', 'SS'),
('SS11522627', '11522627', 'siswa', 'SS'),
('SS11522628', '11522628', 'siswa', 'SS'),
('SS11522629', '11522629', 'siswa', 'SS'),
('SS11522630', '11522630', 'siswa', 'SS'),
('SS11522631', '11522631', 'siswa', 'SS'),
('SS11522632', '11522632', 'siswa', 'SS'),
('SS11522633', '11522633', 'siswa', 'SS'),
('SS11522634', '11522634', 'siswa', 'SS'),
('SS11522635', '11522635', 'siswa', 'SS'),
('SS11522636', '11522636', 'siswa', 'SS'),
('SS11522637', '11522637', 'siswa', 'SS'),
('SS11522638', '11522638', 'siswa', 'SS'),
('SS11522639', '11522639', 'siswa', 'SS'),
('SS11522640', '11522640', 'siswa', 'SS'),
('SS11522641', '11522641', 'siswa', 'SS'),
('SS11522642', '11522642', 'siswa', 'SS'),
('SS11522643', '11522643', 'siswa', 'SS'),
('SS11522644', '11522644', 'siswa', 'SS'),
('SS11522645', '11522645', 'siswa', 'SS'),
('SS11522646', '11522646', 'siswa', 'SS'),
('SS11522647', '11522647', 'siswa', 'SS'),
('SS11522648', '11522648', 'siswa', 'SS'),
('SS11522649', '11522649', 'siswa', 'SS'),
('SS11522650', '11522650', 'siswa', 'SS'),
('SS11522651', '11522651', 'siswa', 'SS'),
('SS11522652', '11522652', 'siswa', 'SS'),
('SS11522653', '11522653', 'siswa', 'SS'),
('SS11522654', '11522654', 'siswa', 'SS'),
('SS11522655', '11522655', 'siswa', 'SS'),
('SS11522656', '11522656', 'siswa', 'SS'),
('SS11522657', '11522657', 'siswa', 'SS'),
('SS11522658', '11522658', 'siswa', 'SS'),
('SS11522659', '11522659', 'siswa', 'SS'),
('SS11522660', '11522660', 'siswa', 'SS'),
('SS11522661', '11522661', 'siswa', 'SS'),
('SS11522662', '11522662', 'siswa', 'SS'),
('SS11522663', '11522663', 'siswa', 'SS'),
('SS11522664', '11522664', 'siswa', 'SS'),
('SS11522665', '11522665', 'siswa', 'SS'),
('SS11522666', '11522666', 'siswa', 'SS'),
('SS11522667', '11522667', 'siswa', 'SS'),
('SS11522668', '11522668', 'siswa', 'SS'),
('SS11522669', '11522669', 'siswa', 'SS'),
('SS21421702', '21421702', 'siswa', 'SS'),
('SS21422468', '21422468', 'siswa', 'SS'),
('tatausaha', 'tatausaha', 'qwerty', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `lapor_diri`
--
ALTER TABLE `lapor_diri`
  ADD PRIMARY KEY (`lapor_diri_id`);

--
-- Indexes for table `paket_keahlian`
--
ALTER TABLE `paket_keahlian`
  ADD PRIMARY KEY (`paket_keahlian_id`),
  ADD KEY `program_keahlian_id` (`program_keahlian_id`);

--
-- Indexes for table `peserta_didik`
--
ALTER TABLE `peserta_didik`
  ADD PRIMARY KEY (`NIPD`),
  ADD UNIQUE KEY `NISN` (`NISN`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `peserta_didik_kelas`
--
ALTER TABLE `peserta_didik_kelas`
  ADD KEY `fk_pd_kelas_rombel` (`NIPD`),
  ADD KEY `rombel_id` (`rombel_id`),
  ADD KEY `tahun_ajaran_id` (`tahun_ajaran_id`);

--
-- Indexes for table `program_keahlian`
--
ALTER TABLE `program_keahlian`
  ADD PRIMARY KEY (`program_keahlian_id`);

--
-- Indexes for table `rombel`
--
ALTER TABLE `rombel`
  ADD PRIMARY KEY (`rombel_id`),
  ADD KEY `paket_keahlian_id` (`paket_keahlian_id`);

--
-- Indexes for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`tahun_ajaran_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- Indexes for table `tunggakan`
--
ALTER TABLE `tunggakan`
  ADD PRIMARY KEY (`tunggakan_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `paket_keahlian`
--
ALTER TABLE `paket_keahlian`
  ADD CONSTRAINT `paket_keahlian_ibfk_1` FOREIGN KEY (`program_keahlian_id`) REFERENCES `program_keahlian` (`program_keahlian_id`);

--
-- Constraints for table `peserta_didik`
--
ALTER TABLE `peserta_didik`
  ADD CONSTRAINT `peserta_didik_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `peserta_didik_kelas`
--
ALTER TABLE `peserta_didik_kelas`
  ADD CONSTRAINT `peserta_didik_kelas_ibfk_1` FOREIGN KEY (`NIPD`) REFERENCES `peserta_didik` (`NIPD`),
  ADD CONSTRAINT `peserta_didik_kelas_ibfk_2` FOREIGN KEY (`tahun_ajaran_id`) REFERENCES `tahun_ajaran` (`tahun_ajaran_id`);

--
-- Constraints for table `rombel`
--
ALTER TABLE `rombel`
  ADD CONSTRAINT `rombel_ibfk_1` FOREIGN KEY (`paket_keahlian_id`) REFERENCES `paket_keahlian` (`paket_keahlian_id`),
  ADD CONSTRAINT `rombel_ibfk_2` FOREIGN KEY (`rombel_id`) REFERENCES `peserta_didik_kelas` (`rombel_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
