create database filmDatabase;
use filmDatabase;

create table Person(
  PersonID int not null,
  Navn varchar(255),
  FødselÅr int,
  FødselsLand varchar(255),
  primary key (PersonID)
);

create table FilmEpisode(
  FilmID int not null,
  Tittel varchar(255) not null,
  Platform varchar(255) not null,
  Lengde int not null,
  ProdÅr int not null,
  LansDato varchar(255) not null,
  Beskrivelse varchar(255),
  primary key (FilmID)
);

create table Bruker(
  BrukerID int not null,
  Brukernavn varchar(255),
  primary key (BrukerID)
);

create table Selskap(
  SelskapsID int not null,
  URL varchar(255),
  Adresse varchar(255),
  Land varchar(255),
  primary key (SelskapsID)
);

create table Musikk(
  MusikkID int not null,
  Komponist varchar(255),
  Artist varchar(255),
  primary key (MusikkID)
);

create table Kategori(
  KategoriID int not null,
  type varchar(255),
  primary key (KategoriID)
);

create table KategoriIMP(
  FilmID int not null,
  KategoriID int not null,
  primary key (FilmID),
  foreign key (KategoriID) references Kategori(KategoriID)
);

create table Regissør(
  RegissørID int not null,
  FilmID int not null,
  foreign key (RegissørID) references Person(PersonID),
  foreign key (FilmID) references FilmEpisode(FilmID)
);

create table Manusforfatter(
  ManusforfatterID int not null,
  FilmID int not null,
  foreign key (ManusforfatterID) references Person(PersonID),
  foreign key (FilmID) references FilmEpisode(FilmID)
);
create table Skuespiller(
  SkuespillerID int not null,
  FilmID int not null,
  Rolle varchar(255) not null,
  foreign key (SkuespillerID) references Person(PersonID),
  foreign key (FilmID) references FilmEpisode(FilmID)
);

create table BrukerAnmeldelse(
  BrukerID int not null,
  tekst varchar(255),
  FilmID int,
  primary key (BrukerID),
  foreign key (FilmID) references FilmEpisode(FilmID)
);

create table BrukerKommentar(
  BrukerID int not null,
  tekst varchar(255),
  FilmID int,
  primary key (BrukerID),
  foreign key (FilmID) references FilmEpisode(FilmID)
);

create table BrukerTekst(
  BrukerID int not null,
  tekst varchar(255),
  FilmID int,
  primary key (BrukerID),
  foreign key (FilmID) references FilmEpisode(FilmID)
);

create table BrukerRangering(
  BrukerID int not null,
  tekst varchar(255),
  FilmID int,
  primary key (BrukerID),
  foreign key (FilmID) references FilmEpisode(FilmID)
);

create table Sesong(
   SesongID int not null,
   SesongNr int not null,
   primary key(SesongID)
);

create table EpisodeAv(
   EpisodeNr int not null,
   SesongID int not null,
   FilmID int not null,
   foreign key(SesongID) references Sesong(SesongID),
   foreign key(FilmID) references FilmEpisode(FilmID)
);



