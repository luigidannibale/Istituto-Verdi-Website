-- creazione del database
create Ala_ambulatoriale;
use Ala_ambulatoriale;


-- creazione della tabella anagrafiche
create table Anagrafiche (
    ID_anagrafica smallint primary key not null auto_increment,
    Nome varchar(30),
    Cognome varchar (30),
    Data_di_nascita date,
    Luogo_di_nascita varchar(40),
    Codice_fiscale varchar(16),
    Indirizzo_di_residenza varchar(50),
    Numero_di_cellulare varchar(10),
    Email varchar(40),
    PW varchar(20)
);

-- creazione della tabella ambulatori
create table Ambulatori (
    ID_ambulatorio smallint primary key,
    Campo_medico_specialistico text
);

-- creazione della tabella prestazioni
create table Prestazioni (
    ID_prestazione smallint primary key,
    Descrizione varchar(50)
);

-- creazione della tabella visite
create table Visite (
    ID_visita smallint primary key auto_increment,
    Data_visita date,
    Ora_visita time,
    Paziente smallint,
    Ambulatorio smallint,
    Prestazione smallint,
    foreign key (Paziente) references Anagrafiche (ID_anagrafica),
    foreign key (Ambulatorio) references Ambulatori (ID_ambulatorio),
    foreign key (Prestazione) references Prestazioni (ID_prestazione)
);

-- inserimento degli ambulatori
INSERT INTO Ambulatori VALUES (1,'Chirurgia1'), (2,'Chirurgia2'), 
(3,'Endocrinologia1'), (4,'Endocrinologia2'), 
(5,'Ortopedia1'),(6,'Ortopedia2'),
(7,'Cardiologia1'),(8,'Cardiologia2'),
(9,'Oncologia1'),(10,'Oncologia2'),
(11,'Oftalmologia1'),(12,'Oftalmologia2'),
(13,'Otorinolangoiatria1'),(14,'Otorinolangoiatria2'),
(15,'Neurologia1'),(16,'Neurologia2');

-- inserimento delle prestazioni
insert into Prestazioni values (1,"Visita chirurgica"), 
(2,"Asportazioni di cisti, nervi o lipomi"),
(3,"Asportazioni di cisti, nervi o lipomi compreso esame istologico"),
(4,"Biopsie neoformazioni cavo orale, lingua, naso, orecchio esterno, etc."),
(5,"Asportazione lesioni intranasali /orecchio esterno"),
(6,"Incisione ascesso peritonsillare"),
(7,"Causticazione narici setto nasale"),
(8,"Lisi aderenze setto nasale"),
(9,"Exeresi neoformazioni della cute del volto"),
(10,"Biopsia prostatica esclusi gli accertamenti richiesti dall'anestesista"),
(11,"Biopsia prostatica compresi gli accertamenti"),
(12,"Biopsia prostatica fusion compresi gli accertamenti"),
(13,"Circoncisione compresi gli accertamenti");



