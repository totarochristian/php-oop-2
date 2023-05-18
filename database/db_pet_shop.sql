-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 18, 2023 alle 14:14
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
(2, 'Gatti'),
(3, 'Pesci'),
(4, 'Tartarughe'),
(5, 'Rettili'),
(6, 'Uccelli'),
(7, 'Roditori'),
(8, 'Altri animali');

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
  `brand` varchar(50) NOT NULL,
  `weight` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `category_id`, `product_type_id`, `image`, `price`, `vote`, `brand`, `weight`) VALUES
(1, 'Seresto collare antiparassitario cani grandi', 'Questo collare innovativo offre una protezione completa contro pulci e zecche fino a 8 mesi con una sola applicazione. Durante questo lasso di tempo il collare rilascia in modo controllato e costante i principi attivi imidacloprid e flumetrina, fondamentali per proteggere e prevenire infestazioni parassitarie pericolose per la salute del tuo cane.', 1, 1, 'https://arcaplanet.vtexassets.com/arquivos/ids/269684-1800-1800/seresto-antiparassitario-cane-grande.jpg?v=1770717675&quality=1&width=1800&height=1800', 55.9, 4.7, 'Seresto', 300),
(2, 'Monge all breeds adult salmone e riso', 'Le crocchette di Monge Salmone e Riso All Breeds Adult sono un alimento completo per cani adulti di tutte le taglie formulato con un\'unica fonte proteica: il salmone. Il cibo secco Monge Superpremium Salmone è stato sviluppato pensando al benessere del tuo amico a quattro zampe, grazie alla presenza di sostanze nutritive di qualità frutto della ricerca Made in Italy.', 1, 2, 'https://arcaplanet.vtexassets.com/arquivos/ids/270797-1800-1800/Monge-All-Breeds-Adult-Salmone-e-Riso-12Kg.jpg?v=1770731679&quality=1&width=1800&height=1800', 59.99, 4.7, 'Mongoe', 12000),
(3, 'Frontline antiparassitario spot-on per gatti 4 pipette', 'Frontline Spot-on per gatti, nella confezione da 4 pipette, si profila come una soluzione rapida ed efficace per trattare e prevenire le infestazioni da zecche, pulci e pidocchi nei gatti adulti e nei gattini. Il fipronil, con un singolo trattamento, tiene sotto controllo e risolve in modo rapido e definitivo le infestazioni da pidocchi, in particolare quelle provocate da Felicola subrostratus, pidocchio masticatore del gatto.', 2, 3, 'https://arcaplanet.vtexassets.com/arquivos/ids/252970-1800-1800/Frontline-Spot-On-4-Pipette.jpg?v=1770727640&quality=1&width=1800&height=1800', 19.99, 4.6, 'Frontline', 200),
(4, 'Gourmet gold gatto mix intrecci di gusto multipack', 'Gourmet gold intrecci di gusto è preparato con pezzettini finemente sminuzzati di manzo e pollo, salmone e merluzzo, o altre varietà attentamente selezionate, insaporite con cura da un tocco di salsa: prelibate creazioni dal duplice gusto, per deliziare il tuo gatto ad ogni assaggio.', 2, 2, 'https://arcaplanet.vtexassets.com/arquivos/ids/280254-1800-1800/gourmet-gold-gatto-mix-intrecci-di-gusto-multipack-24x85g.jpg?v=1770732739&quality=1&width=1800&height=1800', 16.25, 4.6, 'Gourmet', 2040),
(5, 'Gioco pesce guizzante per gatto', 'Qualcuno ha attraversato mari e correnti per venire a giocare con il tuo gatto. Il pesce guizzante firmato Trixie è il prodotto perfetto, per tutte quelle attività tanto amate dai felini di casa come coccolarlo, strofinarvi sopra il muso, e leccarlo. Il pesciolino è stato realizzato in peluche/plastica con catnip. Vibra in maniera irregolare se toccato e si ferma in modo automatico dopo 15 secondi. Il pesce guizzante per gatti si ricarica tramite cavo USB. Lunghezza del prodotto 30CM.', 2, 1, 'https://arcaplanet.vtexassets.com/arquivos/ids/264784-1800-1800/trixie-pesce-guizzante-gioco-gatto.jpg?v=1770682841&quality=1&width=1800&height=1800', 11.99, 3.9, 'Trixie', 250),
(6, 'Tiragraffi north pole', 'Hai poco spazio e vedi che il tuo gatto ha bisogno di un posto tutto suo dove farsi le unghie? Il tiragraffi North Pole Lovedì è l\'accessorio giusto per casa tua! Con la sua altezza di 42 CM e la base di 23 CM, è il graffiatoio adatto per il tuo micio che non ne potrà fare a meno! Prova questo affila unghie, ha delle caratteristiche uniche: è poco ingombrante, ma allo stesso tempo funzionale ed economico.', 2, 1, 'https://arcaplanet.vtexassets.com/arquivos/ids/280267-1800-1800/tiragraffi-north-pole-lovedi.jpg?v=1770596233&quality=1&width=1800&height=1800', 14.99, 3.8, 'Lovedi', 1300),
(7, 'Paletta Pick Up Jumbo Standard Grigio', 'La paletta igienica Pick Up Jumbo Grigio per gatto è il prodotto ideale per setacciare le lettiere e a portar via gli escrementi. I fori della paletta fanno ricadere nella toilette la sabbietta inutilizzata, evitando così sprechi inutili. La paletta igienica Pick Up Jumbo Blu è stata realizzata per il 98% con plastica riciclata. Il prodotto dispone di una griglia a misura standard. Pick Up Jumbo Grigia è adatta a tutti i tipi di lettiera. Prodotto disponibile nel colore grigio.', 2, 1, 'https://arcaplanet.vtexassets.com/arquivos/ids/262339-1800-1800/yes-paletta-pick-up-jumbo-grigio-eco.jpg?v=1769300112&quality=1&width=1800&height=1800', 3.49, 3, 'Yes', 360),
(8, 'Oto clean', 'Gill\'s oto-gills elimina il cerume, lo sporco e la polvere dalle orecchie del tuo amico a quattro zampe, neutralizzandone anche i cattivi odori. Per utilizzare il prodotto: tenere alzare la testa di Fido e fa cadere 2 o 3 gocce di prodotto all\'interno dell\'orecchia, tenendo la testa in questa posizione per qualche secondo, affinché il prodotto possa giungere in maggior profondità.', 2, 3, 'https://arcaplanet.vtexassets.com/arquivos/ids/221238-1800-1800/gill-s-cane-oto-gills.jpg?v=1770721460&quality=1&width=1800&height=1800', 5.9, 3, 'Gill\'s', 220),
(9, 'Vaschetta in vetro per pesci', 'Vasca aperta CROCI realizzata in vetro con cornice superiore ed inferiore colorata. Ideale per realizzare un piccolo acquario o come tartarughiera.\r\nSono vasche economiche in vetro con cornice superiore ed inferiore colorata.', 3, 1, 'https://arcaplanet.vtexassets.com/arquivos/ids/254638-1800-1800/Croci-vaschetta-per-pesci-azzurra.jpg?v=1770629550&quality=1&width=1800&height=1800', 69.99, 2.3, 'Croci', 2000),
(10, 'Roccia vulcanica nera', 'Roccia naturale specificatamente selezionata per ricreare acquari naturali con tecniche di “Aquascaping” o biotopi “Wild”.\r\nIdeale per l’uso in acquari, paludari, acqua terrari, Indispensabile lavarla sotto abbondante acqua corrente prima di inserirla in acquario per eliminare polvere, terra ed altri residui.\r\nProdotto naturale – ogni pezzo è unico e può differire dagli altri per peso, forma, colore e dimensione.', 3, 1, 'https://arcaplanet.vtexassets.com/arquivos/ids/222256-1800-1800/roccia-vulcanica-nera.jpg?v=1770509635&quality=1&width=1800&height=1800', 2.85, 5, 'Amtra', 213),
(11, 'Croci tartarughe Tugamin', 'Croci Tartarughe Tugamin è un prodotto complementare per la nutrizione delle tartarughe. Complesso multiminerale che favorisce lo sviluppo della corazza, l’indurimento del piastrone e il buon svolgimento delle differenti funzioni organiche.\r\nAssicura una vita sana e longeva alle tue tartarughe con Tugamin!', 4, 3, 'https://arcaplanet.vtexassets.com/arquivos/ids/222236-1800-1800/croci-tartarughe-tugamin.jpg?v=1770596053&quality=1&width=1800&height=1800', 4.49, 5, 'Croci', 312),
(12, 'Ghiaia per rettili Repti Bark', 'La ghiaietta Repti Bark a pezzatura piccola di Croci è stata realizzata al 100 per cento con pura corteccia d\' abete. La corteccia presente nel prodotto è di taglia piuttosto piccola per impedire ai grilli (o ad altri insetti) di nascondersi nei sottostrati. Ghiaia pensata per tutti i rettili amanti dell\'umidità.', 5, 1, 'https://arcaplanet.vtexassets.com/arquivos/ids/223988-1800-1800/repti-bark-kg-2-5.jpg?v=1767917631&quality=1&width=1800&height=1800', 12.99, 2.3, 'Croci', 2500),
(13, 'Natural mix parrocchetti', 'Pregiato mangime completo Padovan Naturalmix per Parrocchetti: inseparabili e calopsitte. Disponibile nella pratica confezione da 850 g. qualità  100% italiana.', 6, 2, 'https://arcaplanet.vtexassets.com/arquivos/ids/221571-1800-1800/naturalmix-parrocchetti-kg-45.jpg?v=1770769139&quality=1&width=1800&height=1800', 10.9, 4.6, 'Padovan', 850),
(14, 'Vitakraft uccelli ossi di seppia', 'Vitakraft Ossi di seppia è un prodotto marino naturale, ideale per dare al tuo pennuto tutta la calce di cui ha bisogno. Lo snack può essere facilmente e comodamente attaccato alla gabbia del tuo amico piumato. Gli ossi di seppia si profilano come uno snack nutriente per tutte le razze di uccelli.', 6, 2, 'https://arcaplanet.vtexassets.com/arquivos/ids/221567-1800-1800/vitakraft-uccelli-ossi-di-seppia.jpg?v=1770804952&quality=1&width=1800&height=1800', 4.65, 4.8, 'Vitakraft', 100),
(15, 'Expecial mais lemon piccoli animali lettiera', 'La lettiera vegetale per conigli e piccoli roditori ha una profumazione al gusto di limone e presenta un ottimo controllo degli odori.\r\nExpecial Mais Lemon non si attacca al pelo e alle zampe del tuo pelosetto, infatti i granuli sono più pesanti rispetto a quelli in legno.\r\n100% naturale, composta da tutolo di mais, il mais è particolarmente apprezzato dall\'olfatto di tutti i roditori. Il peso della lettiera è di 4.6kg.', 7, 1, 'https://arcaplanet.vtexassets.com/arquivos/ids/206405-1800-1800/Expecial-Mais-Lemon-lettiera-vegetale-per-piccoli-animali-10-l.jpg?v=1770811555&quality=1&width=1800&height=1800', 10.49, 4.5, 'Expecial', 4600),
(16, 'Camole farina essiccate roditore', 'Le Camole della farina essiccate di Trixie presentano un alto contenuto di preziose proteine di origine animale. Questo prodotto è ideale per gerbilli, criceti ma anche uccelli insettivori e rettili, viene delicatamente essiccato. Contenuto da 70 g.', 7, 3, 'https://arcaplanet.vtexassets.com/arquivos/ids/257898-1800-1800/180016_PHO_PRO_CLIP_60792-1.jpg?v=1770803457&quality=1&width=1800&height=1800', 4.9, 5, 'Trixie', 70),
(17, 'Cliffi sticks criceti e scoiattoli frutta miele', 'Cliffy Sticks Fruity per criceti e scoiattoli da compagnia, sono importanti perché oltre a fornire le sostanze nutritive necessarie per una corretta alimentazione, consentono a questi piccoli roditori di alimentarsi, procurandosi il cibo da soli, come in natura, inducendoli così ad attuare tutti quei comportamenti che sono utili per il mantenimento di un buon equilibrio psicofisico.', 8, 2, 'https://arcaplanet.vtexassets.com/arquivos/ids/221395-1800-1800/cliffi-sticks-criceti-e-scoiattoli-frutta-miele.jpg?v=1770682781&quality=1&width=1800&height=1800', 4.25, 2.5, 'Cliffi', 110),
(18, 'Pollaio happy farm 120 beige', 'Pollaio Happy Farm 120 Beige è un pollaio per galline in robustissima plastica. Una fattoria felice per le vostre galline! Happy Farm 120 è una casetta per galline in robusta resina termoplastica, perfetta per l\'esterno e dotata di solidi piedini di appoggio che la mantengono isolata dal terreno.', 8, 1, 'https://arcaplanet.vtexassets.com/arquivos/ids/257436-1800-1800/ferplast1.jpg?v=1769589307&quality=1&width=1800&height=1800', 380, 3, 'Ferplast', 15000);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT per la tabella `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
