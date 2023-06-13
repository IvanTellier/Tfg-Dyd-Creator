/*CREATE DATABASE dyd;*/

use dyd;
SET FOREIGN_KEY_CHECKS=0;
drop table usuarios;
create table if not exists usuarios(
id int not null auto_increment,
nombre varchar(20) not null unique,
password varchar(100) not null,
correo varchar(50) unique not null,
primary key (id)
);
 
drop table razas;
create table if not exists razas(
id int not null,
nombre varchar(20) not null,
descripcion text,
atributos_raciales varchar(100),
velocidad int,
tamano varchar(20),
habilidades_especiales text,
idiomas text,
subrazas text,
imagen text,
primary key (id)
);

insert into razas(id, nombre, descripcion, atributos_raciales, velocidad, tamano, habilidades_especiales, idiomas, subrazas, imagen)
values(1, 'Enano', 'Reinos rebosantes de antiguo esplendor, salas excavadas en las raíces de las montañas, forjas abarasadoras, el resonar de los picos y martillos en las minas,
 el compromisocon el clan y la tradición, y el odio a los orcos y goblins. Estas son las hebras que todos los enanos comparten',
 '+2 Constitución', 25, 'Mediano', 'Visión en la Oscuridad, Resistencia Enana, Afinidad con la Piedra', 'Común, Enano', 'Enano de las Colinas, Enano de las Montañas', 
 'https://s3-eu-west-2.amazonaws.com/dungeon20/images/213/original-168fdf5ff239ca258d7070d179bcb5d5ac595f99.png');

insert into razas(id, nombre, descripcion, atributos_raciales, velocidad, tamano, habilidades_especiales, idiomas, subrazas, imagen)
values(2, 'Elfo','Los elfos son seres etéreos que viven en armonía con la naturaleza y la magia. Residen en hermosos lugares como bosques antiguos y brillantes torres. Su entorno se llena de suave música y fragancias dulces. Los elfos valoran el arte, la artesanía, la música y la poesía.',
 '+2 Destreza', 30, 'Mediano', 'Visión en la Oscuridad, Sentidos Agudos, Linaje Feérico, Trance', 'Común, Élfico', 'Alto Elfo, Elfo de los Bosques, Elfo Oscuro',
 'https://s3-eu-west-2.amazonaws.com/dungeon20/images/211/original-13e01fb6d13589ab0dbf93dfd61df95dfce7bf95.png');

insert into razas(id, nombre, descripcion, atributos_raciales, velocidad, tamano, habilidades_especiales, idiomas, subrazas, imagen)
values(3,'Mediano','Los medianos anhelan las comodidades del hogar: un refugio seguro lejos del peligro, un fuego cálido y una comida abundante, buena bebida y conversación. Algunos viven en comunidades agrícolas, mientras otros son nómadas atraídos por nuevas tierras. Aunque su hogar sea un carro o una balsa, aman la paz y la sensación de pertenencia.',
 '+2 Destreza', 25, 'Pequeno', 'Afortunado, Valiente, Agilidad de Mediano', 'Común, Mediano','No tiene actualmente',
 'https://imagizer.imageshack.com/a/img924/275/kAbeRK.png');

insert into razas(id, nombre, descripcion, atributos_raciales, velocidad, tamano, habilidades_especiales, idiomas, subrazas, imagen)
values(4, 'Humano', 'Los humanos son la raza más joven en la mayoría de los mundos, con vidas más cortas que enanos, elfos y dragones. Quizás debido a esto, anhelan lograr mucho en el tiempo que se les ha dado. Construyen imperios poderosos basados en el comercio y la conquista, demostrando su valía a las razas antiguas. Los humanos son innovadores, triunfadores y pioneros del mundo.',
 '+1 Fuerza, +1 Destreza, +1 Constitución, +1 Inteligencia, +1 Sabiduría, +1 Carisma', 30, 'Mediano', '', 'Común, +1 idioma extra', 'No tiene actualmente',
 'https://media-waterdeep.cursecdn.com/avatars/thumbnails/6/342/420/618/636272680339895080.png');

insert into razas(id, nombre, descripcion, atributos_raciales, velocidad, tamano, habilidades_especiales, idiomas, subrazas, imagen)
values(5, 'Dracónido', 'Los dracónidos, descendientes de dragones, enfrentan temor e incomprensión en el mundo. Nacieron de huevos de dragones, combinando lo mejor de estas criaturas y los humanoides. Algunos son leales a los verdaderos dragones, otros luchan como soldados y algunos buscan su propósito sin éxito. Son una raza única.',
 '+2 Fuerza, +1 Carisma', 30, 'Mediano', 'Linaje Dracónico, Ataque de Aliento, Resistencia al Daño', 'Común, Dracónico', 'No tiene actualmente',
 'https://i.pinimg.com/originals/71/50/0c/71500cbb07c6ef345a552ea95b1d1b35.png');

insert into razas(id, nombre, descripcion, atributos_raciales, velocidad, tamano, habilidades_especiales, idiomas, subrazas, imagen)
values(6, 'Gnomo', 'En las madrigueras y barriadas de los gnomos, hay un constante murmullo de actividad. Entre ese ruido de fondo, se escuchan sonidos más llamativos: engranajes girando, explosiones menores y risas triunfales. Los gnomos disfrutan de la vida, saboreando cada momento mientras exploran, investigan, crean y juegan.',
 '+2 Inteligencia', 25, 'Pequeno', 'Visión en la Oscuridad, Astucia Gnoma', 'Común, Gnomo', 'Gnomo de los Bosques',
 'https://i.pinimg.com/originals/7b/1d/a3/7b1da3b5e63530948b6cbaba463b4555.png');
 
 insert into razas(id, nombre, descripcion, atributos_raciales, velocidad, tamano, habilidades_especiales, idiomas, subrazas, imagen)
 values(7, 'Semielfo', 'Los semielfos combinan las mejores cualidades de elfos y humanos: curiosidad, inventiva y ambición humanas, junto con los sentidos refinados y los gustos artísticos humanos. Algunos viven entre humanos, enfrentando la brevedad de la vida y la diferencia emocional. Otros se unen a los elfos, pero se sienten inquietos al envejecer. Muchos semielfos optan por la vida aventurera o el vagabundeo solitario.',
 '+2 Carisma, +1 en otras dos a tu elección', 30, 'Mediano', 'Linaje Feérico, Versatil con Habilidades', 'Elfo, +1 idioma', 'No tiene actualmente',
 'https://s3-eu-west-2.amazonaws.com/dungeon20/images/291/original-005074da4a51b72de5738ae9a7dc724aa3808517.png');
 
insert into razas(id, nombre, descripcion, atributos_raciales, velocidad, tamano, habilidades_especiales, idiomas, subrazas, imagen)
values(8, 'Semiorco', 'Las alianzas entre orcos y humanos a veces resultan en matrimonios y el nacimiento de semiorcos. Algunos semiorcos se convierten en líderes orgullosos de las comunidades orcas, mientras que otros se aventuran en el mundo para demostrar su valía. Muchos de ellos se convierten en aventureros y alcanzan la grandeza mediante sus proezas poderosas.',
 '+2 Fuerza, +1 Constitución', 30, 'Mediano', 'Visión en la Oscuridad, Amenazador, Aguante Incansable, Ataques Salvajes', 'Común, Orco', 'No tiene actualmente',
 'https://s3-eu-west-2.amazonaws.com/dungeon20/images/293/original-995f8bd91337f2dcaf8e23f06348613d9f5dbf4b.png');
 
 insert into razas(id, nombre, descripcion, atributos_raciales, velocidad, tamano, habilidades_especiales, idiomas, subrazas, imagen)
 values (9, 'Tiefling', 'Los tiflin enfrentan miradas, susurros, violencia e insultos en la calle debido a un pacto ancestral que infundió la esencia de Asmodeus en su linaje. Su apariencia y naturaleza no son culpa suya, sino el resultado de un antiguo pecado por el cual siempre serán responsables, junto con sus descendientes.',
  '+2 Carisma, +1 Inteligencia', 30, 'Mediano', 'Visión en la Oscuridad, Resistencia Infernal, Linaje Infernal', 'Común, Infernal', 'No tiene actualmente',
  'https://i.pinimg.com/originals/b0/42/23/b042237db6034373244c03ed464eff63.png');

drop table clases;
create table if not exists clases(
id int not null,
nombre varchar(20) not null,
descripcion text,
dado_de_golpe varchar(10),
habilidades_clase text,
competencias text,
subclases text,
conjuros text,
imagen text,
primary key(id)
);

insert into clases(id, nombre, descripcion, dado_de_golpe, habilidades_clase, competencias, subclases, conjuros, imagen)
values (1, 'Barbaro', 'Un guerrero feroz que puede entrar en una furia de batalla.', 'd12',
'Furia, Defensa sin Armadura, Ataque Temerario, Sentir el Peligro, Senda Primordial, Movimiento Rápido, Instinto Salvaje,Crítico Brutal, Furia Implacable, Furia Persistente, Poderío Indomito, Campeón Primordial',
'Armaduras ligeras, Armaduras medianas, Escudos, Armas sencillas, Armas marciales', 'Senda del Berserker, Senda del Guerrero Totem', 'No tiene actualmente', 
'https://ruben-mesa.neocities.org/DyD5/Clases/Clasesimg/Barbaro.png');

insert into clases(id, nombre, descripcion, dado_de_golpe, habilidades_clase, competencias, subclases, conjuros, imagen)
values (2, 'Bardo', 'Un mago inspirador cuyo poder hace eco de la música de la creación.', 'd8',
'Inspiración Bárdica, Aprediz de Mucho, Canción de Descanso, Colegio Bárdico, Pericia, Fuente de Inspiración, Contraencantamiento, Secretos Mágicos, Inspiración Superior',
'Armaduras ligeras, Armas Sencillas, Ballestas de mano, Espadas cortas, Espadas largas, Estoques, +3 instrumentos', 'Colegio del Lore, Colegio del Valor', 'No tiene actualmente',
'https://gamecows.com/wp-content/uploads/2022/08/DnD-5e-Bard-146x300.png');

insert into clases(id, nombre, descripcion, dado_de_golpe, habilidades_clase, competencias, subclases, conjuros, imagen)
values (3, 'Brujo','Un portador de la magia que se deriva de un trato con una entidad extraplanar.', 'd8',
'Pacto Sobrenatural,Magia del Pacto, Invocaciones Sobrenaturales, Beneficio del Pacto, Arcanum Místico, Maestro Sobrenatural',
 'Armaduras ligeras, Armas sencillas', 'El Archifrei, El Demonio, El Gran Viejo', 'No tiene actualmente', 
 'https://d1dc220a3d.cbaul-cdnwnd.com/af29ed4a5e30899c0fe3f3eb4dc693c0/200000015-0cac00cac2/636272708661726603.png');

insert into clases(id, nombre, descripcion, dado_de_golpe, habilidades_clase, competencias, subclases, conjuros, imagen)
values (4, 'Clérigo', 'Un campeón sacerdotal que ejerce la magia divina al servicio de un poder superior.', 'd8',
'Lanzamiento de Conjuros, Dominio Divino, Canalizar Divinidad, Destruir Muertos Vivientes, Intercesión Divina, Dominios Divinos',
'Armaduras ligeras, Armaduras medianas, Escudos, Armas sencillas',
 'Dominio del Conocimiento, Dominio de la Vida, Dominio de la Luz, Dominio de la Naturaleza, Dominio de la Tempestad, Dominio del Engaño, Dominio de la Guerra', 'No tiene actualmente',
 'https://d1dc220a3d.cbaul-cdnwnd.com/af29ed4a5e30899c0fe3f3eb4dc693c0/200000016-af4bdaf4bf/636272706155064423.png');

insert into clases(id, nombre, descripcion, dado_de_golpe, habilidades_clase, competencias, subclases, conjuros, imagen)
values (5, 'Druida', 'Un sacerdote de la Vieja Fe, que ejerce los poderes de la naturaleza y que adopta formas animales.', 'd8',
'Lanzamiento de Conjuros, Forma Salvaje, Círculo Druídico, Cuerpo Atemporal Conjurar como Bestia, Archidruida',
'Armaduras ligeras, Armaduras medianas, Escudos, Garrotes, Dagas, Dardos, Jabalinas, Mazas, Bastones, Cimitarras, Hoces, Hondas, Lanzas, Herramientas de Herborista',
 'Circulo de la Tierra, Circulo de la Luna', 'No tiene actualmente',
 'https://i.redd.it/kp3r33b1ex071.png');

insert into clases(id, nombre, descripcion, dado_de_golpe, habilidades_clase, competencias, subclases, conjuros, imagen)
values(6, 'Explorador', 'Un guerrero que usa la destreza marcial y la magia de la naturaleza para combatir las amenazas en los confines de la civilización.', 'd10',
 'Enemigo Predilecto, Explorador Nato, Estilo de Combate, Lanzamiento de Conjuros, Arquetipo de Explorador, Percepción Primigenea, Paso de la Tierra, Esconderse a Plena Vista, Desvanecerse, Sentidos Salvajes, Azote de Enemigos',
  'Armaduras ligeras, Armaduras medianas, Escudos, Armas sencillas, Armas marciales', 'Cazador, Señor de las Bestias', 'No tiene actualmente', 
  'https://ruben-mesa.neocities.org/DyD5/Clases/Clasesimg/Explorador.png');
  
insert into clases(id, nombre, descripcion, dado_de_golpe, habilidades_clase, competencias, subclases, conjuros, imagen)
values (7, 'Guerrero', 'Un maestro del combate marcial, hábil con una variedad de armas y armaduras.', 'd10',
 'Estilo de Combate, Tomar Aliento, Acción Súbita, Arquetipo Marcial, Indómito', 
 'Armaduras ligeras, Armaduras medianas, Armaduras pesadas, Escudos, Armas sencillas, Armas marciales', 'Campeón, Maestro de Batalla, Caballero Sobrenatural', 'No tiene actualmente', 
 'https://d1dc220a3d.cbaul-cdnwnd.com/af29ed4a5e30899c0fe3f3eb4dc693c0/200000018-7c66b7c66e/fighter.png');
 
insert into clases(id, nombre, descripcion, dado_de_golpe, habilidades_clase, competencias, subclases, conjuros, imagen)
values (8, 'Hechicero', 'Un lanzador de hechizos que recurre a la magia inherente de un don o linaje.', 'd6',
 'Lanzamiento de Conjuros, Origen Mágico, Fuente de Magia, Metamagia, Recuperación Mágica', 'Dagas, Dardos, Hondas, Bastones, Ballestas ligeras',
 'Linea de sangre Draconida, Magia Salvaje', 'No tiene actualmente',
 'https://ruben-mesa.neocities.org/DyD5/Clases/Clasesimg/Brujo.png');
 
insert into clases(id, nombre, descripcion, dado_de_golpe, habilidades_clase, competencias, subclases, conjuros, imagen)
 values(9, 'Mago', 'Un usuario mágico erudito capaz de manipular las estructuras de la realidad.', 'd6',
 'Lanzamiento de Conjuros, Recuperación Arcana, Tradición Arcana, Maestría sobre Conjuros, Conjuros Característicos',
 'Dagas, Dardos, Hondas, Bastones, Ballestas ligeras',
 'Escuela de Abjuración, Escuela de Conjuración, Escuela de Adivinación, Escuela de Encantamiento, Escuela de Evocación, Escuela de Ilusión, Escuela de Nigromancia, Escuela de Transmutación', 'No tiene actualmente',
 'https://dungeonedraghi.it/wp-content/uploads/2020/04/mago.png');
 
insert into clases(id, nombre, descripcion, dado_de_golpe, habilidades_clase, competencias, subclases, conjuros, imagen)
values (10, 'Monje', 'Un maestro de las artes marciales que aprovecha el poder del cuerpo en busca de la perfección física y espiritual.', 'd8', 
'Defensa sin Armadura, Artes Marciales, Ki, Movimiento sin Armadura, Tradición Monastica, Desviar Proyectiles, Caída Lenta, Golpe Aturdidor, Golpes Potenciados con Ki, Evasión, 
Quietud Mental, Pureza Mental, Lengua de Cuerpo, Lengua del Sol y la Luna Alma Diamantina, Cuepro Atemporal, Cuerpo Vacío, Yo Perfecto',
 'Armas sencillas, Espadas cortas, Herramienta de artesano, Instrumento Musical', 'Camino de la Mano Abierta, Camino de la Sombra, Camino de los Cuatro Elementos', 'No tiene actualmente',
 'https://ruben-mesa.neocities.org/DyD5/Clases/Clasesimg/Monje.png');

insert into clases(id, nombre, descripcion, dado_de_golpe, habilidades_clase, competencias, subclases, conjuros, imagen)
values (11, 'Paladin', 'Un guerrero santo atado a un juramento sagrado', 'd10',
 'Sentidos Divinos, Imponer Manos, Estilo de Combate, Lanzamiento de Conjuros, Castigo Divino, Salud Divina, Juramento Sagrado, Aura de Protección, Aura de Coraje,
 Castigo Divino Mejorado, Toque Purificador', 'Armaduras ligeras, Armaduras medianas, Armaduras pesadas, Escudos, Armas sencillas, Armas marciales',
 'Juramento de Entrega, Juramento de los Antiguos, Juramento de Venganza', 'No tiene actualmente', 
 'https://ruben-mesa.neocities.org/DyD5/Clases/Clasesimg/Paladin.png');
 
 insert into clases(id, nombre, descripcion, dado_de_golpe, habilidades_clase, competencias, subclases, conjuros, imagen)
 values (12, 'Picaro', 'Un sinvergüenza que usa el sigilo y el engaño para superar obstáculos y enemigos.', 'd8', 
 'Pericia, Ataque furtivo, Jerga de Ladrones, Accion Astuta, Arquetipo de Picaro, Esquiva Asombrosa, Evasión, Talentos Fiables, Sentir sin Ver, Mente Escurridiza, Elusivo, Golpe de Suerte',
 'Armaduras ligeras, Armas sencillas, Ballestas de Mano, Espadas cortas, Espadas largas, Estoques, Herramientas de ladrón', 'Ladrón, Asesino, Tramposo Arcano', 'No tiene actualmente',
 'https://ruben-mesa.neocities.org/DyD5/Clases/Clasesimg/Picaro.png');
 
 
-- personajes TABLE
drop table personajes;
CREATE TABLE if not exists personajes (
  id INT(11) NOT NULL,
  nombre VARCHAR(150) NOT NULL,
  genero VARCHAR(20) NOT NULL,
  nombreRaza VARCHAR(150) NOT NULL,
  imagen text not null,
  nombreClase VARCHAR(255) NOT NULL,
  description TEXT,
  user_id INT(11),
  raza_id int(11),
  clase_id int(11),
  created_at timestamp NOT NULL DEFAULT current_timestamp,
  CONSTRAINT fk_user1 FOREIGN KEY(user_id) REFERENCES usuarios(id),
  CONSTRAINT fk_userRaza1 FOREIGN KEY(raza_id) REFERENCES razas(id),
  CONSTRAINT fk_userClase1 FOREIGN KEY(clase_id) REFERENCES clases(id)
);

ALTER TABLE personajes
  ADD PRIMARY KEY (id);

ALTER TABLE personajes
  MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;