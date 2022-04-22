use ala_ambulatoriale;
SELECT * FROM anagrafiche WHERE ID = 3;
alter table visite auto_increment = 1;
alter table visite modify paziente smallint not null ;
INSERT INTO visite VALUES ('','2002-12-16','9.30','1','1');
INSERT INTO anagrafiche VALUES ('','$nome', "$cognome",'$ddn', '$ldn', '$cfiscale', '$residenza', '$cellulare', '$email', '$password');
INSERT INTO visite VALUES('','$data_visita','$ora_visita','$id','$ambulatorio');
DELETE FROM visite WHERE ID = '$id_v';
SET FOREIGN_KEY_CHECKS=1;
create database Ala_ambulatoriale;
use Ala_ambulatoriale;

INSERT INTO ambulatori VALUES (1,'Chirurgia1'), (2,'Chirurgia2'), 
(3,'Endocrinologia1'), (4,'Endocrinologia2'), 
(5,'Ortopedia1'),(6,'Ortopedia2'),
(7,'Cardiologia1'),(8,'Cardiologia2'),
(9,'Oncologia1'),(10,'Oncologia2'),
(11,'Oftalmologia1'),(12,'Oftalmologia2'),
(13,'Otorinolangoiatria1'),(14,'Otorinolangoiatria2'),
(15,'Neurologia1'),(16,'Neurologia2');

insert into prestazioni values (1,"Visita chirurgica"), 
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