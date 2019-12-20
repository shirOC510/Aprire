use base_datos_1;

CREATE TABLE productos(
    id_producto int(50) NOT NULL AUTO_INCREMENT,
    nombre varchar(255) NOT NULL,
    img_producto varchar(255) NOT NULL,
    id_categoria int NOT NULL,
    precio decimal(10,2) NOT NULL,
    stock int NOT NULL,
    primary key (id_producto)
);

DELIMITER //
    CREATE PROCEDURE selectProductos()
    BEGIN
        SELECT * FROM productos;
    END 
//

DELIMITER //
    CREATE PROCEDURE selectProducto(
        IN _id_producto int
    )
    BEGIN
        SELECT * FROM productos WHERE id_producto = _id_producto;
    END 
//

INSERT INTO productos(id_categoria, nombre,precio ,img_producto ,stock) VALUES (1, 'Cafeina' , 190.50 ,'images/men/cuero/a.jpg' ,7);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1, 'Black in Black' , 100.00, 'images/men/cuero/b.jpg' ,3);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1, 'Moustache', 150.90 , 'images/men/cuero/c.jpg' ,5);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1, 'Conquer', 170.50 ,'images/men/cuero/d.jpg',3);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1, 'Caoba' , 100.00 ,'images/men/cuero/e.jpg',4);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1, 'Flieger' , 200.00,'images/men/cuero/f.jpg',2);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1, 'SC' , 120.00 ,'images/men/cuero/g.jpg',9);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1, 'Footlose' , 140.75, 'images/men/cuero/h.jpg',6);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1, 'GhostRider' , 300.00 ,'images/men/cuero/i.jpg',4);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Adidas Azul',85.50,'images/men/sport/s_1.jpg',7);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'BlackRed',100.00,'images/men/sport/s_2.jpg',7);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'WhiteRed',90.90,'images/men/sport/s_3.jpg',5);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'BlackWhite',55.00,'images/men/sport/s_4.jpg',8);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'HotHole',45.35,'images/men/sport/s_5.jpg',4);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'GrayBubble',110.00,'images/men/sport/s_6.jpg',10);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Bend',90.00,'images/men/sport/s_7.jpg',9);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Plopy',79.99,'images/men/sport/s_8.jpg',6);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Nubecielo',39.99,'images/men/sport/s_9.jpg',20);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Addidas AC Milan',150.00,'images/men/sport/s_10.jpg',10);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Navy',75.50,'images/men/drill/d_1.jpg',7);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Purple Haze',76.78,'images/men/drill/d_2.jpg',7);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Black Porpuse',85.59,'images/men/drill/d_3.jpg',7);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Boboka',95.50,'images/men/drill/d_4.jpg',7);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Distorsion',135.89,'images/men/drill/d_5.jpg',7);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Premimum League',225.50,'images/men/drill/d_6.jpg',7);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Moe',90.00,'images/men/drill/d_7.jpg',12);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Comodore',115.50,'images/men/drill/d_8.jpg',5);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Astronauta',200.00,'images/men/drill/d_9.jpg',3);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Blues',165.75,'images/men/drill/d_10.jpg',8);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Ice Soldier',89.99,'images/men/drill/d_11.jpg',9);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Bond',90.65,'images/men/drill/d_12.jpg',4);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Protected',85.95,'images/men/drill/d_13.jpg',6);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Haze',115.95,'images/men/jean/j_1.jpg',6);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Punk',205.05,'images/men/jean/j_2.jpg',6);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Force Air',85.65,'images/men/jean/j_3.jpg',6);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Oveja Azul',155.35,'images/men/jean/j_4.jpg',6);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Urban Ocean',95.55,'images/men/jean/j_5.jpg',6);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Confort',105.45,'images/men/jean/j_6.jpg',6);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Artic Military',85.95,'images/men/jean/j_7.jpg',6);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Space',135.99,'images/men/jean/j_8.jpg',10);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Hole',125.49,'images/men/jean/j_9.jpg',8);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Sora',95.95,'images/men/jean/j_10.jpg',9);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Sin Limites Dark',105.39,'images/men/jean/j_11.jpg',9);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Sin Limites Light',115.00,'images/men/jean/j_12.jpg',8);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Hungry Tree',125.00,'images/men/jean/j_13.jpg',7);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Haze',115.95,'images/men/jean/j_1.jpg',6);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Punk',205.05,'images/men/jean/j_2.jpg',6);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Force Air',85.65,'images/men/jean/j_3.jpg',6);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Oveja Azul',155.35,'images/men/jean/j_4.jpg',6);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Urban Ocean',95.55,'images/men/jean/j_5.jpg',6);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Confort',105.45,'images/men/jean/j_6.jpg',6);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Artic Military',85.95,'images/men/jean/j_7.jpg',6);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Space',135.99,'images/men/jean/j_8.jpg',10);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Hole',125.49,'images/men/jean/j_9.jpg',8);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Sora',95.95,'images/men/jean/j_10.jpg',9);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Sin Limites Dark',105.39,'images/men/jean/j_11.jpg',9);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Sin Limites Light',115.00,'images/men/jean/j_12.jpg',8);
INSERT INTO productos(id_categoria,nombre,precio,img_producto,stock) VALUES (1,'Hungry Tree',125.00,'images/men/jean/j_13.jpg',7);