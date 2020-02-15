CREATE TABLE `Film` (
  `id_film` Int PRIMARY KEY AUTO_INCREMENT,
  `nom_film` Varchar(255) NOT NULL,
  `datesortie` Date NOT NULL,
  `duree` Time NOT NULL,
  `typefilm` Varchar(255) NOT NULL,
  `synopsis` Text NOT NULL
);

CREATE TABLE `Realisateur` (
  `id_realisateur` Int PRIMARY KEY AUTO_INCREMENT,
  `nom_realisateur` Varchar(255) NOT NULL,
  `prenom_realisateur` Varchar(255) NOT NULL,
  `nbdefilm` Int NOT NULL,
  `nationalite` Varchar(255) NOT NULL
);

CREATE TABLE `Acteur` (
  `id_acteur` Int PRIMARY KEY AUTO_INCREMENT,
  `nom_acteur` Varchar(255) NOT NULL,
  `prenom_acteur` Varchar(255) NOT NULL,
  `nbfilmsjoue` Int NOT NULL,
  `nationalite` Varchar(255) NOT NULL,
  `datenaissance` Date NOT NULL
);

CREATE TABLE `Genre` (
  `id_genre` Int PRIMARY KEY AUTO_INCREMENT,
  `type` Varchar(255) NOT NULL
);

CREATE TABLE `realiser` (
  `id_realisateur` Int NOT NULL,
  `id_film` Int NOT NULL
);

CREATE TABLE `posseder` (
  `id_genre` Int NOT NULL,
  `id_film` Int NOT NULL
);

CREATE TABLE `jouer` (
  `id_acteur` Int NOT NULL,
  `id_film` Int NOT NULL
);

ALTER TABLE `realiser` ADD FOREIGN KEY (`id_realisateur`) REFERENCES `Realisateur` (`id_realisateur`);

ALTER TABLE `realiser` ADD FOREIGN KEY (`id_film`) REFERENCES `Film` (`id_film`);

ALTER TABLE `posseder` ADD FOREIGN KEY (`id_genre`) REFERENCES `Genre` (`id_genre`);

ALTER TABLE `posseder` ADD FOREIGN KEY (`id_film`) REFERENCES `Film` (`id_film`);

ALTER TABLE `jouer` ADD FOREIGN KEY (`id_acteur`) REFERENCES `Acteur` (`id_acteur`);

ALTER TABLE `jouer` ADD FOREIGN KEY (`id_film`) REFERENCES `Film` (`id_film`);
