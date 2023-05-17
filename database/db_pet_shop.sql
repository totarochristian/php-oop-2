-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 17, 2023 alle 16:44
-- Versione del server: 10.4.27-MariaDB
-- Versione PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pet_shop`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Cani'),
(2, 'Gatti');

-- --------------------------------------------------------

--
-- Struttura della tabella `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `product_type_id` bigint(20) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `vote` float NOT NULL,
  `brand` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `category_id`, `product_type_id`, `image`, `price`, `vote`, `brand`) VALUES
(1, 'Seresto collare antiparassitario cani grandi', 'Questo collare innovativo offre una protezione completa contro pulci e zecche fino a 8 mesi con una sola applicazione. Durante questo lasso di tempo il collare rilascia in modo controllato e costante i principi attivi imidacloprid e flumetrina, fondamentali per proteggere e prevenire infestazioni parassitarie pericolose per la salute del tuo cane.', 1, 1, 'https://arcaplanet.vtexassets.com/arquivos/ids/269684-1800-1800/seresto-antiparassitario-cane-grande.jpg?v=1770717675&quality=1&width=1800&height=1800', 55.9, 4.7, 'Seresto'),
(2, 'Monge all breeds adult salmone e riso', 'Le crocchette di Monge Salmone e Riso All Breeds Adult sono un alimento completo per cani adulti di tutte le taglie formulato con un\'unica fonte proteica: il salmone. Il cibo secco Monge Superpremium Salmone è stato sviluppato pensando al benessere del tuo amico a quattro zampe, grazie alla presenza di sostanze nutritive di qualità frutto della ricerca Made in Italy.', 1, 2, 'https://arcaplanet.vtexassets.com/arquivos/ids/270797-1800-1800/Monge-All-Breeds-Adult-Salmone-e-Riso-12Kg.jpg?v=1770731679&quality=1&width=1800&height=1800', 59.99, 4.7, 'Mongoe'),
(3, 'Frontline antiparassitario spot-on per gatti 4 pipette', 'Frontline Spot-on per gatti, nella confezione da 4 pipette, si profila come una soluzione rapida ed efficace per trattare e prevenire le infestazioni da zecche, pulci e pidocchi nei gatti adulti e nei gattini. Il fipronil, con un singolo trattamento, tiene sotto controllo e risolve in modo rapido e definitivo le infestazioni da pidocchi, in particolare quelle provocate da Felicola subrostratus, pidocchio masticatore del gatto.', 2, 3, 'https://arcaplanet.vtexassets.com/arquivos/ids/252970-1800-1800/Frontline-Spot-On-4-Pipette.jpg?v=1770727640&quality=1&width=1800&height=1800', 19.99, 4.6, 'Frontline'),
(4, 'Gourmet gold gatto mix intrecci di gusto multipack', 'Gourmet gold intrecci di gusto è preparato con pezzettini finemente sminuzzati di manzo e pollo, salmone e merluzzo, o altre varietà attentamente selezionate, insaporite con cura da un tocco di salsa: prelibate creazioni dal duplice gusto, per deliziare il tuo gatto ad ogni assaggio.', 2, 2, 'https://arcaplanet.vtexassets.com/arquivos/ids/280254-1800-1800/gourmet-gold-gatto-mix-intrecci-di-gusto-multipack-24x85g.jpg?v=1770732739&quality=1&width=1800&height=1800', 16.25, 4.6, 'Gourmet'),
(5, 'Gioco pesce guizzante per gatto', 'Qualcuno ha attraversato mari e correnti per venire a giocare con il tuo gatto. Il pesce guizzante firmato Trixie è il prodotto perfetto, per tutte quelle attività tanto amate dai felini di casa come coccolarlo, strofinarvi sopra il muso, e leccarlo. Il pesciolino è stato realizzato in peluche/plastica con catnip. Vibra in maniera irregolare se toccato e si ferma in modo automatico dopo 15 secondi. Il pesce guizzante per gatti si ricarica tramite cavo USB. Lunghezza del prodotto 30CM.', 2, 1, 'https://arcaplanet.vtexassets.com/arquivos/ids/264784-1800-1800/trixie-pesce-guizzante-gioco-gatto.jpg?v=1770682841&quality=1&width=1800&height=1800', 11.99, 3.9, 'Trixie'),
(6, 'Tiragraffi north pole', 'Hai poco spazio e vedi che il tuo gatto ha bisogno di un posto tutto suo dove farsi le unghie? Il tiragraffi North Pole Lovedì è l\'accessorio giusto per casa tua! Con la sua altezza di 42 CM e la base di 23 CM, è il graffiatoio adatto per il tuo micio che non ne potrà fare a meno! Prova questo affila unghie, ha delle caratteristiche uniche: è poco ingombrante, ma allo stesso tempo funzionale ed economico.', 2, 1, 'https://arcaplanet.vtexassets.com/arquivos/ids/280267-1800-1800/tiragraffi-north-pole-lovedi.jpg?v=1770596233&quality=1&width=1800&height=1800', 14.99, 3.8, 'Lovedi'),
(7, 'Paletta Pick Up Jumbo Standard Grigio', 'La paletta igienica Pick Up Jumbo Grigio per gatto è il prodotto ideale per setacciare le lettiere e a portar via gli escrementi. I fori della paletta fanno ricadere nella toilette la sabbietta inutilizzata, evitando così sprechi inutili. La paletta igienica Pick Up Jumbo Blu è stata realizzata per il 98% con plastica riciclata. Il prodotto dispone di una griglia a misura standard. Pick Up Jumbo Grigia è adatta a tutti i tipi di lettiera. Prodotto disponibile nel colore grigio.', 2, 1, 'https://arcaplanet.vtexassets.com/arquivos/ids/262339-1800-1800/yes-paletta-pick-up-jumbo-grigio-eco.jpg?v=1769300112&quality=1&width=1800&height=1800', 3.49, 3, 'Yes'),
(8, 'Oto clean', 'Gill\'s oto-gills elimina il cerume, lo sporco e la polvere dalle orecchie del tuo amico a quattro zampe, neutralizzandone anche i cattivi odori. Per utilizzare il prodotto: tenere alzare la testa di Fido e fa cadere 2 o 3 gocce di prodotto all\'interno dell\'orecchia, tenendo la testa in questa posizione per qualche secondo, affinché il prodotto possa giungere in maggior profondità.', 2, 3, 'https://arcaplanet.vtexassets.com/arquivos/ids/221238-1800-1800/gill-s-cane-oto-gills.jpg?v=1770721460&quality=1&width=1800&height=1800', 5.9, 3, 'Gill\'s');

-- --------------------------------------------------------

--
-- Struttura della tabella `product_types`
--

CREATE TABLE `product_types` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `product_types`
--

INSERT INTO `product_types` (`id`, `name`) VALUES
(1, 'Accessori'),
(2, 'Alimentazione'),
(3, 'Medicali e curativi');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Category` (`category_id`),
  ADD KEY `FK_Product` (`product_type_id`);

--
-- Indici per le tabelle `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT per la tabella `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_Category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `FK_Product` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
