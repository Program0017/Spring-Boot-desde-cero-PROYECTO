        drop table if exists videojuego;
        drop table if exists distribuidor;


        create table videojuego (
            id int primary key auto_increment,
            nombre varchar(200) not null,
            descripcion varchar(3000),
            image_url varchar(500)
        );


        insert into videojuego 
        (id, nombre,                    descripcion,                                                                                                                                                                    image_url) values
        (1, 'Bioshock Infinite',       'La última gran entrega de la saga Bioshock, ahora en una imperdible ciudad de ensueño entre las nubes.',                                                                       'https://cdn.vox-cdn.com/thumbor/I24jyQjEEDBM4AQrGIbaCk4t2gk=/0x0:1080x720/1200x800/filters:focal(0x0:1080x720)/cdn.vox-cdn.com/uploads/chorus_image/image/4674397/bioshock_infinite_delay.0.jpg'),
        (2, 'Insurgency: Sandstorm',   'Un FPS táctico por equipos basado en combates letales en espacios reducidos y multijugador centrado en objetivos',                                                             'https://areajugones.sport.es/wp-content/uploads/2018/06/insurgency-e1528802800327.jpg'),
        (3, 'The Witness',             'Te despiertas, a solas, en una extraña isla llena de puzles que te retarán y sorprenderán.',                                                                                   'https://cdn.wccftech.com/wp-content/uploads/2016/11/the-witness-ps4-pro-patch-4k-2060x1288.jpg'),
        (4, 'Braid',                   'Un juego de rompecabezas con toques plataformeros, donde puedes manipular el flujo del tiempo de unas maneras inusuales y extrañas.',                                          'https://upload.wikimedia.org/wikipedia/en/6/6a/Braidlogo.jpg'),
        (5, 'Borderlands 3',           '¡Vuelve el padre de los shooter-looter, con tropecientas mil armas y una aventura caótica!',                                                                                   'https://upload.wikimedia.org/wikipedia/en/2/21/Borderlands_3_cover_art.jpg'),
        (6, 'Control',                 'Tras la invasión de una agencia secreta de Nueva York por parte de una amenaza de otro mundo, te conviertes en la nueva directora que deberá luchar para recuperar Control.',  'https://media.playstation.com/is/image/SCEA/control-poster-01-ps4-us-11sep19?$native_nt$'),
        (7, 'Subnautica',              'Un juego de aventuras submarinas ambientado en un mundo oceánico alienígena. ¡Te espera un mundo abierto enorme lleno de maravillas y peligros!',                              'https://store.playstation.com/store/api/chihiro/00_09_000/container/ES/es/999/EP5426-CUSA13893_00-2222444466669999/1568624921000/image?w=240&h=240&bg_color=000000&opacity=100&_version=00_09_000'),
        (8, 'Firewatch',               'Firewatch es un juego de misterio en primera persona para un jugador que se desarrolla en la selva de Wyoming',                                                                'https://www.mobygames.com/images/covers/l/323028-firewatch-playstation-4-front-cover.jpg');

        insert into videojuego 
        (id, nombre,                    descripcion,                                                                                                                                                                                                                                                       image_url) values
        (9, 'Minecraft',               'Explora un mundo infinito lleno de aventuras y creatividad. En Minecraft, tu imaginación es el límite. Construye, explora y sobrevive en un universo pixelado lleno de posibilidades.',                                                                           'https://upload.wikimedia.org/wikipedia/en/5/51/Minecraft_cover.png'),      
        (10, 'Terraria',                'Embárcate en una aventura épica llena de acción y descubrimientos. En Terraria, explora vastas tierras, excava en las profundidades de la tierra y lucha contra monstruos en un mundo lleno de maravillas y peligros.',                                           'https://upload.wikimedia.org/wikipedia/en/1/1a/Terraria_Steam_artwork.jpg'),
        (11, 'Hollow Knight',           'Adéntrate en las profundidades de un mundo oscuro y misterioso habitado por criaturas extrañas y peligrosas. En Hollow Knight, la exploración, el combate y la resolución de acertijos te llevarán a descubrir los secretos ocultos de un reino olvidado.',       'https://upload.wikimedia.org/wikipedia/en/thumb/0/04/Hollow_Knight_first_cover_art.webp/274px-Hollow_Knight_first_cover_art.webp.png'),
        (12, 'Minecraft Dungeons',      'Sumérgete en un mundo de mazmorras lleno de peligros y tesoros. En Minecraft Dungeons, forma equipo con amigos, lucha contra hordas de enemigos y descubre secretos ocultos en un universo lleno de sorpresas y desafíos.',                                       'https://upload.wikimedia.org/wikipedia/en/7/73/Minecraft_Dungeons_cover_art.jpg');

        create table distribuidor(
        id int primary key auto_increment,
        nombre varchar(200) not null,
        sitio_web varchar(500)
        );

        insert into distribuidor
        (nombre,                         sitio_web) values
        ('2K',                           'https://2k.com'),
        ('Focus Home Interactive',       'https://www.focus-home.com'),
        ('Thekla',                       null),
        ('Number One',                   null),
        ('505 Games',                    'https://505games.com'),
        ('Unknown Worlds Entertainment', 'https://unknownworlds.com'),
        ('Campo Santo',                  'https://www.camposanto.com'),
        ('Mojang',                       'https://www.minecraft.net/en-us/article/meet-mojang-studios'),
        ('Re logic',                     'https://re-logic.com'),
        ('Team Cherry',                  'https://www.teamcherry.com.au');
           
        alter table videojuego
        add column distribuidor_id int,
        add foreign key (distribuidor_id) references distribuidor(id);

        update videojuego set distribuidor_id = 1 where id in (1, 5);
        update videojuego set distribuidor_id = 2 where id in (2);
        update videojuego set distribuidor_id = 3 where id in (3);
        update videojuego set distribuidor_id = 4 where id in (4);
        update videojuego set distribuidor_id = 5 where id in (6);
        update videojuego set distribuidor_id = 6 where id in (7);
        update videojuego set distribuidor_id = 7 where id in (8);
        update videojuego set distribuidor_id = 8 where id in (9, 12); -- Cambiado de (8,12) a (9, 11)        
        update videojuego set distribuidor_id = 9 where id in (10);
        update videojuego set distribuidor_id = 10 where id in (11);

        alter table videojuego
        modify distribuidor_id int not null;
