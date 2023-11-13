USE los_gatos_db;

INSERT INTO  proveedor(nombre_proveedor) VALUES('Coca-Cola-Company');
INSERT INTO  proveedor(nombre_proveedor) VALUES('CCU');
INSERT INTO  proveedor(nombre_proveedor) VALUES('Ideal');
INSERT INTO  proveedor(nombre_proveedor) VALUES('Nestle');
INSERT INTO  proveedor(nombre_proveedor) VALUES('Soprole');
INSERT INTO  proveedor(nombre_proveedor) VALUES('Otro');


INSERT INTO tipo_producto(nombre_tipo_producto) VALUES('Bebidas');
INSERT INTO tipo_producto(nombre_tipo_producto) VALUES('Vinos');
INSERT INTO tipo_producto(nombre_tipo_producto) VALUES('Cervezas');
INSERT INTO tipo_producto(nombre_tipo_producto) VALUES('Espumantes');
INSERT INTO tipo_producto(nombre_tipo_producto) VALUES('Otros');


INSERT INTO sub_tipo_producto(nombre_sub_tipo_producto) VALUES('Bebidas Coca-Cola');
INSERT INTO sub_tipo_producto(nombre_sub_tipo_producto) VALUES('Bebidas CCU');
INSERT INTO sub_tipo_producto(nombre_sub_tipo_producto) VALUES('Cervezas Coca-Cola');
INSERT INTO sub_tipo_producto(nombre_sub_tipo_producto) VALUES('Cervezas CCU');
INSERT INTO sub_tipo_producto(nombre_sub_tipo_producto) VALUES('Vinos Coca-Cola');
INSERT INTO sub_tipo_producto(nombre_sub_tipo_producto) VALUES('Vinos CCU');
INSERT INTO sub_tipo_producto(nombre_sub_tipo_producto) VALUES('Espumantes Coca-Cola');
INSERT INTO sub_tipo_producto(nombre_sub_tipo_producto) VALUES('Espumantes CCU');
INSERT INTO sub_tipo_producto(nombre_sub_tipo_producto) VALUES('Snacks');
INSERT INTO sub_tipo_producto(nombre_sub_tipo_producto) VALUES('Dulces');


INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Coca-Cola-2L','80','2000','Con-Gas','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Coca-Cola-3L','80','2800','Con-Gas','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Coca-Cola-Sin-Azucar-2L','80','2000','Con-Gas','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Coca-Cola-Sin-Azucar-3L','80','2800','Con-Gas','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Coca-Cola-Light-2L','80','2000','1','Con-Gas','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Coca-Cola-Light-3L','80','2800','Con-Gas','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Sprite-2L','80','2000','Con-Gas','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Sprite-3L','80','2800','Con-Gas','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Sprite-Zero-2L','80','2000','Con-Gas','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Sprite-Zero-3L','80','2800','Con-Gas','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Fanta-2L','80','2000','Con-Gas','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Fanta-3L','80','2800','Con-Gas','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Fanta-Zero-2L','80','2000','Con-Gas','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Fanta-Zero-3L','80','2800','Con-Gas','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Aquarius-Manzana-1.5L','50','1000','Jugo','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Aquarius-Pera-1.5L','50','1000','Jugo','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Aquarius-Piña-1.5L','50','1000','Jugo','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Aquarius-Uva-1.5L','50','1000','Jugo','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Powerade-Cool-Blue-1L','80','1350','Isotonica','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Powerade-Frutos-Rojos-1L','80','1350','Isotonica','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Powerade-Naranja-1L','80','1350','Isotonica','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Medalla-Real-Cabernet-Sauvignon-750ML','80','4990','Cabernet-Sauvignon','1','2','5');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Medalla-Real-Carmenere-750ML','80','4990','Carmenere','1','2','5');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Medalla-Real-Merlot-750ML','80','4990','Merlot','1','2','5');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Medalla-Real-Sauvignon-Blanco-750ML','80','4990','Sauvignon-Blanco','1','2','5');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Carmen-Gran-Reserva-Frida-Kahlo-Carmenere-750ML','80','7690','Carmenere','1','2','5');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Medalla-Real-Gran-Reserva-Carmenere-750ML','80','10990','Carmenere','1','2','5');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Carmen-Insigne-Chardonnay-750ML','80','2790','Chardonnay','1','2','5');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Secret-Reserve-Seleccion-Carmenere-750ML','80','2790','Carmenere','1','2','5');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Medalla-Real-Gold-Carmenere-750ML','80','7690','Carmenere','1','2','5');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('120-3-Medallas-Late-Harvest-750ML','80','5290','Late-Harvest','1','2','5');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Medalla-Real-Gran-Reserva-Cabernet-Sauvignon-750ML','80','10990','Cabernet-Sauvignon','1','2','5');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Terra-Andina-Cabernet-Sauvignon-750ML','80','2890','Cabernet-Sauvignon','1','2','5');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Doña-Paula-Estate-Malbec-750ML','80','2790','Malbec','1','2','5');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Carmen-Gran-Reserva-Cabernet-Sauvignon-750ML','80','7690','Cabernet-Sauvignon','1','2','5');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Sensus-Moscatel-Dolce-9°-750ML','80','5490','Moscatel-Dolce','1','4','7');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Sensus-Brut-12°-750ML','80','5490','Brut','1','4','7');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Viña-Francisco-de-Aguirre-Brut-12°-750ML','80','5490','Brut','1','4','7');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Myla-Brut-12°-750ML','80','6490','Brut','1','4','7');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Myla-Brut-Rose-12°-750ML','80','5490','Brut-Rose','1','4','7');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Amaranta-Brut-12X-250ML','80','18990','Brut','1','4','7');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Amaranta-Extra-Brut-12°-750ML','80','7990','Brut','1','4','7');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Myla-Extra-Brut-12°-750ML','80','7490','Brut','1','4','7');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Sensus-Kir-Royal-13°-750ML','80','5490','Kir-Royal','1','4','7');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Carmen-Extra-Brut-750ML','80','9190','Brut','1','4','7');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Sensus-Extra-Brut-12°-750ML','80','7990','Brut','1','4','7');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Viña-Francisco-de-Aguirre-Demisec-750ML','80','5490','Demi-Sec','1','4','7');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Sensus-Brut-Rose-12°-750ML','80','6090','Brut','1','4','7');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Amaranta-Moscato-12°-750ML','80','4990','Moscato','1','4','7');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Amaranta-Demi-Sec-750ML','80','4690','Demi-Sec','1','4','7');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Corona-4,5°-24X330CC','50','28990','Cerveza-Rubia','1','3','3');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Stella-Artois-5,0°-12X330CC','50','28990','Cerveza-Lager','1','3','3');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Cusqueña-Golden-4,8°-6X354CC','50','28990','Cerveza-Golden','1','3','3');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Becker-4,5°-12X354CC','50','6990','Cerveza-Lager','1','3','3');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Becker-5,6°-6X473CC','50','4990','Cerveza-Negra','1','3','3');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('KM-24.7-Amber-Lager-4,5°-4X473CC','50','5990','Cerveza-Amber-Lager','1','3','3');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Becker-B-Mix-4,2°-6X354CC','50','5690','Cerveza-Limon','1','3','3');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Corona-Cero-0,0°-6X330CC','50','6990','Cerveza-Cero','1','3','3');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Quilmes-4,9°-6X473CC','50','5390','Cerveza-Lager','1','3','3');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Pilsen-del-Sur-4,4°-6X473CC','50','5490','Cerveza-Lager','1','3','3');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Cusqueña-Negra-5,6°-6X473CC','50','5490','Cerveza-Negra','1','3','3');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Stella-Artois-5,0°-12X354CC','50','11490','Cerveza-Lager','1','3','3');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Nutra-Bien-Braunichoc-35g','100','500','Braunichoc','3','5','10');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Marinela-Alfi-10un-150g','50','1600','Alfi','3','5','10');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Marinela-Rollo-50g','50','400','Rollo','3','5','10');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Marinela-Tkch-44g','50','400','Tkch','3','5','10');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Nutra-Bien-Brownie-62g','50','800','Brownie','3','5','10');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Nutra-Bien-Brownie-Sin-Azucar-50g','50','800','Brownie','3','5','10');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Nutra-Bien-Galleton-Avena-Pasas-40g','50','750','Galleton','3','5','10');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Nutra-Bien-Galleton-Avena-Manzana-40g','50','750','Galleton','3','5','10');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Gansito-Wafer-23g','50','400','Gansito','3','5','10');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Ideal-Magdalenas-9un-225g','50','1800','Magdalenas','3','5','10');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Nutra-Bien-Galleton-Chips-Chocolate-40g','50','750','Galleton','3','5','10');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Nutra-Bien-Delicia-Frambuesa-42g','50','550','Delicia-Frambuesa','3','5','10');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Ideal-Queque-Marmolado-200g','20','1990','Queque','3','5','10');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Bilz-Desechable-3L','50','2260','Con-Gas','2','1','2');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Pap-Desechable-3L','50','2260','Con-Gas','2','1','2');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Limon-Soda-Desechable-3L','50','2260','Con-Gas','2','1','2');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Kem-Piña-Desechable-3L','50','2260','Con-Gas','2','1','2');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Pepsi-Desechable-3L','50','2260','Con-Gas','2','1','2');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Canada-Dry-Desechable-3L','50','2260','Con-Gas','2','1','2');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Kem-Xtreme-1.5L','50','1900','Con-Gas','2','1','2');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Watts-Durazno-1.5L','50','1750','Jugo','2','1','2');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Watts-Naranja-1.5L','50','1750','Jugo','2','1','2');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Watts-Arandano-1.5L','50','1750','Jugo','2','1','2');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Gatorade-Cool-Blue-1L','50','1300','Isotonica','2','1','2');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Gatorade-Frutos-Tropicales-1L','50','1300','Isotonica','2','1','2');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Cachantun-Mas-Granada-1.6L','50','1300','Isotonica','2','1','2');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Cachantun-Mas-Manzana-1.6L','50','1300','Isotonica','2','1','2');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Cachantun-Mas-Pera-1.6L','50','1300','Isotonica','2','1','2');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Bestia-Icono-Cabernet-Sauvignon-750CC','50','26000','Cabernet-Sauvignon','2','2','6');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Toro-de-Piedra-Petit-Verdot-750CC','50','7900','Petit-Verdot','2','2','6');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Toro-de-Piedra-Merlot-750CC','50','7900','Merlot','2','2','6');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Toro-de-Piedra-Carmenere-750CC','50','7900','Carmenere','2','2','6');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Toro-de-Piedra-Cabernet-Sauvignon-750CC','50','7900','Cabernet-Sauvignon','2','2','6');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Bestia-Negra-Merlot-750CC','50','7900','Merlot','2','2','6');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Bestia-Negra-Carmenere-750CC','50','7150','Carmenere','2','2','6');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Bestia-Negra-Cabernet-Sauvignon-750CC','50','7150','Cabernet-Sauvignon','2','2','6');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Diablo-Black-Cabernet-Sauvignon-750CC','50','6800','Cabernet-Sauvignon','2','2','6');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Diablo-Dark-Red-750CC','50','6800','Dark-Red','2','2','6');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Casillero-Del-Diablo-Reserva-Privada-Cabernet-Sauvignon-750CC','50','6700','Cabernet-Sauvignon','2','2','6');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Bestia-Roja-Merlot-750CC','50','6800','Merlot','2','2','6');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Bestia-Roja-Carmenere-750CC','50','6800','Carmenere','2','2','6');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Bestia-Roja-Cabernet-Sauvignon','50','6800','Cabernet-Sauvignon','2','2','6');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Casillero-Del-Diablo-Cabernet-Sauvignon-750CC','50','4700','Cabernet-Sauvignon','2','2','6');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Casillero-Del-Diablo-Merlot-750CC','50','4700','Merlot','2','2','6');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Oveja-Negra-Cabernet-Carmenere-750CC','50','4700','Carmenere','2','2','6');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Bestia-Azul-Merlot-750CC','50','4700','Merlot','2','2','6');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Bestia-Azul-Carmenere-750CC','50','4335','Carmenere','2','2','6');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Bestia-Azul-Cabernet-Sauvignon-750CC','50','4335','Cabernet-Sauvignon','2','2','6');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Cristal-Pack-X6-470CC','50','4770','Cristal','2','3','4');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Royal-Pack-X6-470CC','50','5500','Royal','2','3','4');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Morenita-Malta-Pack-X6-350CC','50','4799','Malta','2','3','4');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Escudo-Pack-x6-470CC','50','4200','Escudo','2','3','4');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Escudo-Silver-Pack-x6-470CC','50','3900','Escudo-Silver','2','3','4');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Cristal-Cero-Pack-x6-350CC','50','3200','Cristal-Cero','2','3','4');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Lemon-Stones-1.5L','50','2200','Lemon-Stones','2','3','4');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Maracuya-Stones-350CC-Pack-X6','50','5000','Maracuya-Stones','2','3','4');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Heineken-Sin-Alcohol-330CC','50','6000','Heiniken-Sin-Alcohol','2','3','4');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Heineken-Pack-X6-330CC','50','5600','Heiniken','2','3','4');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Sol-Pack-X6-335CC','50','4300','Sol-Pack','2','3','4');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Sol-710CC','50','1490','Sol','2','3','4');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Lemon-Stones-1.5L','50','2200','Lemon-Stones','2','3','4');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Lemon-Stones-1.5L','50','2200','Lemon-Stones','2','3','4');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Lemon-Stones-1.5L','50','2200','Lemon-Stones','2','3','4');



INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Chocolito','30','890','Chocolito','4','5','10');

INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Yoguito-Vainilla-120g','50','260','Yoguito','6','5','10');

INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Cheetos-280g','50','1890','Cheetos','6','5','9');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Cheetos-Queso-Crema-250g','50','1590','Cheetos-Queso-Crema','6','5','9');

INSERT INTO productos(nombre_producto, stock, precio, caracteristica, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Misiones-de-Rengo-Demi-Sec-750CC','50','4770','Demi-Sec','2','4','8');





INSERT INTO productos(nombre_producto, stock, precio, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Pepsi-2L','80','2000','2','1','2');
INSERT INTO productos(nombre_producto, stock, precio, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Casillero-Del-Diablo-Merlot-750cc','30','4700','2','2','6');
INSERT INTO productos(nombre_producto, stock, precio, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Cerveza-Austral-1L','30','4700','2','3','4');
INSERT INTO productos(nombre_producto, stock, precio, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Cheetos','80','2000','6','5','9');
INSERT INTO productos(nombre_producto, stock, precio, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Gansito','80','2000','3','5','10');
INSERT INTO productos(nombre_producto, stock, precio, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Danky-21','80','2000','4','5','10');

INSERT INTO django_content_type (app_label, model) VALUES('admin', 'logentry');
INSERT INTO django_content_type (app_label, model) VALUES('auth', 'group');
INSERT INTO django_content_type (app_label, model) VALUES('auth', 'permission');
INSERT INTO django_content_type (app_label, model) VALUES('auth', 'user');
INSERT INTO django_content_type (app_label, model) VALUES('contenttypes', 'contenttype');
INSERT INTO django_content_type (app_label, model) VALUES('sessions', 'session');

INSERT INTO django_migrations (app, name, applied) VALUES('contenttypes', '0001_initial', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0001_initial', now());
INSERT INTO django_migrations (app, name, applied) VALUES('admin', '0001_initial', now());
INSERT INTO django_migrations (app, name, applied) VALUES('admin', '0002_logentry_remove_auto_add', now());
INSERT INTO django_migrations (app, name, applied) VALUES('admin', '0003_logentry_add_action_flag_choices', now());
INSERT INTO django_migrations (app, name, applied) VALUES('contenttypes', '0002_remove_content_type_name', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0002_alter_permission_name_max_length', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0003_alter_user_email_max_length', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0004_alter_user_username_opts', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0005_alter_user_last_login_null', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0006_require_contenttypes_0002', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0007_alter_validators_add_error_messages', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0008_alter_user_username_max_length', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0009_alter_user_last_name_max_length', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0010_alter_group_name_max_length', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0011_update_proxy_permissions', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0012_alter_user_first_name_max_length', now());
INSERT INTO django_migrations (app, name, applied) VALUES('sessions', '0001_initial', now());


INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can add log entry', 1, 'add_logentry');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can change log entry', 1, 'change_logentry');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can delete log entry', 1, 'delete_logentry');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can view log entry', 1, 'view_logentry');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can add permission', 2, 'add_permission');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can change permission', 2, 'change_permission');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can delete permission', 2, 'delete_permission');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can view permission', 2, 'view_permission');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can add group', 3, 'add_group');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can change group',	3, 'change_group');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can delete group',	3, 'delete_group');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can view group', 3, 'view_group');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can add user', 4, 'add_user');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can change user', 4, 'change_user');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can delete user', 4, 'delete_user');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can view user', 4, 'view_user');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can add content type', 5, 'add_contenttype');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can change content type', 5, 'change_contenttype');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can delete content type', 5, 'delete_contenttype');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can view content type', 5, 'view_contenttype');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can add session',	6, 'add_session');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can change session', 6, 'change_session');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can delete session', 6, 'delete_session');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can view session', 6, 'view_session');

INSERT INTO auth_user (password,last_login,is_superuser,username,first_name,last_name,email,is_staff,is_active,date_joined) VALUES ('pbkdf2_sha256$600000$7UUDnFgYdXhuda95cmu7v0$WCmF8Vkjqin16DM+mdk3gGnMDcvFKVVtS79sbrBNr74=',NULL,1,'admin','','','admin@example.cl',1,1, now());