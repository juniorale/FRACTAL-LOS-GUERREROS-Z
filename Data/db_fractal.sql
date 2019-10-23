use fractal;
INSERT INTO  apoderado
	(nomapo,apeapo,dniapo, celapo,emaapo,ubiapo)
VALUES
	('maria','palomino vicente','78945612','987654123','maria.04@gmail.com','san vicente'),
	('juana','quispe vicente','78945123','975632144','juana.01@gmail.com','san vicente'),
    ('jose','rivera quispe','78945687','975645612','rivera@gmail.com','san vicente'),
    ('jesus','canales guanco','74545123','985622144','jesus@gmail.com','san vicente'),
    ('alexis','yaye vilva','78905123','970124144','alexis@gmail.com','san vicente'),
    ('julia','flores trujillo','78945145','975631411','julia@gmail.com','san vicente'),
    ('aldair','soriano vicente','79845123','975632124','aldair@gmail.com','san vicente'),
    ('julio','vivas vicente','75945123','975642144','julio@gmail.com','san vicente'),
    ('marcos','charco quispe','70945123','905632144','marcos1@gmail.com','san vicente'),
    ('jorge','flores yataco','72165612','945654123','ljorge@gmail.com','imperial');
    
INSERT INTO  estudiante
	(nomest,apeest,dniest,esdest,idapo)
VALUES
	('alberto','ruiz vicente','78945612','A','2'),
    ('rigoberto','huapaya rivera','78900002','A','1'),
    ('piter','lopez gracia','70000012','A','3'),
    ('diego','ruiz diaz','78945000','A','4'),
    ('ebert','ocarez mamani','78015612','A','5'),
    ('anderson','huari guzman','70045612','A','6'),
    ('pool','palomino vicente','68945612','A','7'),
    ('jean','vicente huaman','78902612','R','8'),
    ('andrea','llosa vargas','72845612','A','9'),
    ('benja','diaz medrano','78945665','R','10');
    
INSERT INTO  empleado
	(nomemp,apeemp,dniemp,tipemp,fecemp,estemp)
VALUES
    ('pool','meneses yalle','65412378','p','2019-01-15','A'),
    ('julio','taquire diaz','64412378','p','2019-05-01','A'),
    ('joseph','salas diaz','65412379','p','2019-01-20','R'),
    ('diego','simon dice','61412378','p','2019-04-02','A'),
    ('pool','meneses yalle','65412378','p','2019-01-12','A'),
    ('diego','rodrigo paz','67412378','t','2018-08-30','A'),
    ('jesus','canales guando','65453278','t','2019-09-18','R'),
    ('junior','oscco palma','65412678','p','2019-06-17','A'),
    ('rosa','sanchez gamez','65412278','p','2019-11-16','A'),
    ('jeremi','guando ramirez','65412478','p','2019-02-12','A');
    
INSERT INTO  matricula
	(fecmat,idest,idsal)
VALUES
    ('2019-02-15','5','2'),
    ('2019-02-15','3','2'),
    ('2019-02-20','9','1'),
    ('2019-02-20','10','1'),
    ('2019-02-15','1','2'),
    ('2019-02-20','6','1'),
    ('2019-02-20','2','1'),
    ('2019-02-15','4','2'),
    ('2019-02-20','7','1'),
    ('2019-02-15','8','2');
    
INSERT INTO  salon
	(nivsal,grasal,idemp)
VALUES
    ('primaria','primero','5'),
    ('primaria','segundo','6'),
    ('primaria','tercero','1'),
    ('primaria','cuarto','3'),
    ('primaria','quinto','2'),
    ('primaria','sexto','5'),
    ('secundaria','primero','10'),
    ('secundaria','segundo','7'),
    ('secundaria','tercero','8'),
    ('secundaria','cuarto','9'),
	('secundaria','quinto','2');
    
INSERT INTO  curso
	(nomcur,idemp)
VALUES
    ('matematica','2'),
    ('comunicacion','1'),
    ('historia','3'),
    ('geografia','5'),
    ('PFRRHH','6'),
    ('Ciencias y Ambiente','7'),
    ('Arte','8'),
    ('Computacion','9'),
    ('Fisica','4'),
    ('Ed.Fisica','10');
    
INSERT INTO  criterio_nota
	(nomcrinot,pescrinot)
VALUES
    ('rev.cuadernodiario','2'),
    ('rev.examendiario','2'),
    ('rev.cuadernomensual','5'),
    ('rev.cuadernomensual','1');
    
INSERT INTO  nota
	(finnot,idcur,idcrinot,idmat)
VALUES
    ('0','5','5','1'),
    ('0','5','1','1'),
    ('0','5','2','1'),
    ('0','5','2','1'),
    ('0','5','5','2'),
    ('0','5','1','2'),
    ('0','5','2','2'),
    ('0','5','2','2'),
    ('0','5','5','3'),
    ('0','5','2','3');
    
INSERT INTO  asistencia
	(ingasi,tipasi,idest,idmat)
VALUES
    ('a','a','5','5'),
    ('f','b','4','4'),
    ('t','a','3','3'),
    ('a','a','2','2'),
    ('t','a','1','1'),
    ('a','b','6','6'),
    ('a','a','7','7'),
    ('a','a','8','8'),
    ('f','a','9','9'),
    ('a','c','10','10');
    
select * from criterio_nota; 
delete from nota;
ALTER TABLE nota AUTO_INCREMENT = 1;