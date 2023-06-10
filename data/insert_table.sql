BEGIN;

--
-- Categories
--
INSERT INTO "categories"("id", "name", "description") VALUES
(1, '3x3', 'Il s''agit d''un puzzle en trois dimensions en forme de cube, de chaque côté, il a une couleur différente (blanc, rouge, bleu, orange, vert et jaune) et chacun d''eux se compose de neuf pièces.'),
(2, '4x4', 'Petit frère du Rubik''s cube 3x3 car apparu juste quelques années après celui inventé par Erno Rubik, le cube 4x4 fut inventé en 1982. Il est aussi plus gros : 4 rangées, 16 petits cubes par face (et bien sur, toujours 6 faces !).'),
(3, '5x5', 'Le Rubik''s Cube 5x5 propose une variante plus difficile que le Rubik''s Cube classique, pour tester votre logique et votre patience. Le but du jeu est toujours le même, remettre dans l''ordre les faces du cube.'),
(4, '6x6', 'Les cubes 6x6, ont six couches de couleurs, ce qui rend leur résolution un défi pour les esprits agités. Il se compose de 152 pièces, 54 pièces.'),
(5, '7x7', 'Le 7x7 est le plus gros cube autorisé en compétition'),
(6, 'pyraminx', 'Le Pyraminx est composé de quatre pièces centrales, six pièces d''arête, et quatre sommets triviaux. Il peut être tourné pour faire permuter les pièces.'),
(7, 'megaminx', 'Le Megaminx est un casse-tête géométrique à trois dimensions. Il s''apparente au Rubik''s Cube mais est dodécaédrique. Il est constitué de cinquante pièces mobiles.'),
(8, 'square-1', 'Le Square One est un casse-tête équivalent du Rubik''s Cube. Il a été inventé par Karel Hršel et Vojtěch Kopský en 1990. Sa spécificité est qu''il prend, contrairement au cube classique, des centaines de formes différentes.'),
(9, 'skewb', 'Le Skewb est un casse-tête mécanique tridimensionnel inventé par Tony Durham et commercialisé par Uwe Mèffert. Il peut être considéré de la même famille que le Rubik''s Cube. Il compte 15 pièces et non 26 comme le Rubik''s Cube. Il diffère du Rubik''s Cube par ses axes de rotation qui passent par les sommets.');

INSERT INTO "articles"("name", "description", "price", "brand", "image_url", "category_id") VALUES
-- Catégorie '3x3'
('Rubik''s Cube 3x3 Standard', 'Le classique Rubik''s Cube 3x3.', 9.99, 'Rubik''s', 'https://m.media-amazon.com/images/I/81a7IEinLiL.jpg', 1),
('Moyu RS3M 2020', 'Un Rubik''s Cube 3x3 professionnel de la marque Moyu.', 19.99, 'Moyu', 'https://www.atoutcubes.com/44336-large_default/mf3-rs3m-2020-3x3.jpg', 1),
('QiYi Warrior W', 'Un Rubik''s Cube 3x3 abordable pour les débutants.', 7.99, 'QiYi', 'https://www.larbreojeux.fr/wp-content/uploads/2022/06/Cube-3-X-3-Stickerless-QiYi-Warrior-W1.png', 1),
('Gan 356 XS', 'Un Rubik''s Cube 3x3 haut de gamme avec des performances exceptionnelles.', 39.99, 'Gan', 'https://kubekings.fr/17168-large_default/gan-356-xs.jpg', 1),
('YJ Yulong V2 M', 'Un Rubik''s Cube 3x3 magnétique pour une expérience de résolution améliorée.', 12.99, 'YJ', 'https://kubekings.fr/15528-large_default/yj-yulong-3x3-v2-m.jpg', 1),
('Moyu RS3M 2021', 'Une version améliorée du Rubik''s Cube 3x3 RS3M.', 14.99, 'Moyu', 'https://masteryeti.fr/wp-content/uploads/2022/05/LTQMFUF03291.jpg', 1),
('Yuxin Little Magic', 'Un Rubik''s Cube 3x3 économique avec une rotation douce.', 6.99, 'Yuxin', 'https://www.cdiscount.com/pdt2/0/3/9/1/700x700/auc6329035194039/rw/yuxin-little-magic-3x3x3-vitesse-cube-magic-cube-l.jpg', 1),
('MoFang JiaoShi MF3RS3', 'Un Rubik''s Cube 3x3 de qualité avec un prix abordable.', 8.99, 'MoFang JiaoShi', 'https://www.atoutcubes.com/66000-large_default/mf3-rs3-3x3-cubing-classroom-mf3rs3.jpg', 1),
('Gan 356 X', 'Un Rubik''s Cube 3x3 avancé avec un mécanisme réglable.', 34.99, 'Gan', 'https://cdn.shopify.com/s/files/1/0431/3209/2571/products/GAN_1200x1200.jpg?v=1605127699', 1),
('YJ YuLong', 'Un Rubik''s Cube 3x3 classique pour les débutants.', 5.99, 'YJ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4L7-Ghag6GONu1GWBHtjAgus0sQfiAqPfoZBAe5bZv6_qOeAcnNHfD1-zHXg4ZdBepAE&usqp=CAU', 1),

-- Catégorie '4x4'
('YJ MGC 4x4', 'Un excellent Rubik''s Cube 4x4 pour les speedcubers.', 24.99, 'YJ', 'https://cdn.shopify.com/s/files/1/0978/8602/products/YJ-MGC-4x4-Magnetic-Stickerless-Bright.jpg?v=1681849789', 2),
('Moyu Aosu GTS2M', 'Un Rubik''s Cube 4x4 magnétique avec un excellent contrôle.', 34.99, 'Moyu', 'https://cdn.shopify.com/s/files/1/0035/5205/1273/products/moyuaosu4x4gts2mb1_1200x1200.jpg?v=1581454690', 2),
('QiYi MS Magnetic 4x4', 'Un Rubik''s Cube 4x4 magnétique avec une stabilité exceptionnelle.', 29.99, 'QiYi', 'https://fabitasia.ch/WebRoot/Store/Shops/175802/5ECD/5F81/4C36/2F4F/FFF9/0A01/080E/439E/qiyi-ms-4.jpg', 2),
('Moyu Meilong 4x4', 'Un Rubik''s Cube 4x4 abordable pour les débutants.', 9.99, 'Moyu', 'https://www.speedcubefrance.com/wp-content/uploads/2019/06/Meilong4-s-5.jpg', 2),
('YJ Yusu V2 M', 'Un Rubik''s Cube 4x4 magnétique pour une résolution fluide.', 19.99, 'YJ', 'https://ae01.alicdn.com/kf/Hb5af5586f1ac4a10b475cb568dada41ak/YJ-Yusu-Cube-de-Vitesse-Magique-Magn-tique-V2-M-Puzzle-V2M-Jouet-Professionnel-4x4x4-M.jpg', 2),
('MoFang JiaoShi MF4RS3', 'Un Rubik''s Cube 4x4 de qualité avec un prix abordable.', 14.99, 'MoFang JiaoShi', 'https://www.speedcubefrance.com/wp-content/uploads/2019/06/Meilong4-s-6.jpg', 2),
('Gan 460 M', 'Un Rubik''s Cube 4x4 haut de gamme pour les speedcubers.', 49.99, 'Gan', 'https://cdn.shopify.com/s/files/1/0431/3209/2571/products/GAN_74882957-1166-43fc-abce-b8c621433233_1024x1024.jpg?v=1621345035', 2),
('Yuxin Little Magic 4x4', 'Un Rubik''s Cube 4x4 économique avec une sensation de rotation agréable.', 12.99, 'Yuxin', 'https://www.atoutcubes.com/17252-large_default/little-magic-4x4-m.jpg', 2),
('Moyu Aosu WR M', 'Un Rubik''s Cube 4x4 magnétique avec des performances professionnelles.', 39.99, 'Moyu', 'https://cdn.shopify.com/s/files/1/0051/8173/5030/products/AoSu_WRM_Overallg.png?v=1613140525', 2),
('QiYi WuQue M', 'Un Rubik''s Cube 4x4 magnétique pour une résolution rapide.', 24.99, 'QiYi', 'https://www.atoutcubes.com/66161-large_default/qiyi-wuque-m-mini.jpg', 2),

-- Catégorie '5x5'
('Meilong 5x5', 'Un Rubik''s Cube 5x5 à petit prix.', 7.90, 'Meilong', 'https://www.atoutcubes.com/33241-home_default/meilong-5x5.jpg', 3),
('QiYi MP', 'Un Rubik''s Cube 5x5 avec un excellent rendu des mouvements.', 29.99, 'QiYi', 'https://www.atoutcubes.com/52869-thickbox_default/qiyi-mp-5x5-magnetique.jpg', 3),
('Moyu Aochuang WRM', 'Un Rubik''s Cube 5x5 magnétique avec des performances de niveau professionnel.', 49.99, 'Moyu', 'https://kubekings.fr/19682-large_default/moyu-aochuang-5x5-wr-m.jpg', 3),
('QiYi MS Magnetic 5x5', 'Un Rubik''s Cube 5x5 magnétique avec une sensation de rotation fluide.', 34.99, 'QiYi', 'https://fabitasia.ch/WebRoot/Store/Shops/175802/5ECD/6053/B920/22CA/7CC6/0A01/080E/9363/qiyi-ms-5.jpg', 3),
('YJ YuChuang 5x5', 'Un Rubik''s Cube 5x5 abordable pour les amateurs de gros cubes.', 14.99, 'YJ', 'https://ae01.alicdn.com/kf/H1c045f6065b5464b856dcab968420691e/YJ-Yuchuang-Cube-Magique-Magn-tique-V2M-Puzzle-Magique-5x5x5-Aimants-5x5-Jouets-de-Vitesse-Professionnels.jpg_Q90.jpg_.webp', 3),
('MoFang JiaoShi MF5RS3', 'Un Rubik''s Cube 5x5 de qualité avec un prix abordable.', 19.99, 'MoFang JiaoShi', 'https://media.nauticamilanonline.com/product/cubo-de-rubik-mofang-jiaoshi-5x5-mf5-stickerless-800x800.jpg', 3),
('Gan 564 M', 'Un Rubik''s Cube 5x5 haut de gamme pour les speedcubers.', 59.99, 'Gan', 'https://media.printables.com/media/prints/323970/images/2793741_7fea08ca-0a76-4e47-9171-a16b984e2b2f/thumbs/inside/1280x960/jpg/uxtr.webp', 3),
('Yuxin Little Magic 5x5', 'Un Rubik''s Cube 5x5 économique pour une résolution agréable.', 9.99, 'Yuxin', 'https://kubekings.fr/14795-large_default/yuxin-little-5x5-m.jpg', 3),
('Moyu BoChuang GTSM', 'Un Rubik''s Cube 5x5 magnétique pour des performances exceptionnelles.', 44.99, 'Moyu', 'https://m.media-amazon.com/images/I/51XHehYQ0mL._AC_UF894,1000_QL80_.jpg', 3),
('QiYi WuShuang M', 'Un Rubik''s Cube 5x5 magnétique pour une résolution rapide.', 29.99, 'QiYi', 'https://m.media-amazon.com/images/I/71W55L1dFHL._AC_UF894,1000_QL80_.jpg', 3),

-- Catégorie '6x6'
('Moyu AoShi GTS M', 'Un Rubik''s Cube 6x6 magnétique avec une stabilité exceptionnelle.', 59.99, 'Moyu', 'https://ae01.alicdn.com/kf/Habe26a6fed14473e87f8bc3f6c367604G/MoYu-Aoshi-Cube-magique-Original-GTS-6-M-6x6x6-Puzzle-magn-tique-professionnel-jeu-pour-enfants.jpg', 4),
('MoFang JiaoShi MeiLong 6x6', 'Un Rubik''s Cube 6x6 de qualité avec un prix abordable.', 34.99, 'MoFang JiaoShi', 'https://mastercubestore.com/5182-Coolshop_Size/mofang-jiaoshi-meilong-6x6-black.jpg', 4),
('QiYi WuHua V2 M', 'Un Rubik''s Cube 6x6 magnétique pour les speedcubers.', 44.99, 'QiYi', 'https://media.nauticamilanonline.com/product/cubo-de-rubik-qiyi-wuhua-6x6-v2-negro-800x800.jpg', 4),
('Yuxin Little Magic 6x6', 'Un Rubik''s Cube 6x6 économique pour une résolution agréable.', 19.99, 'Yuxin', 'https://www.atoutcubes.com/25956-large_default/yuxin-6x6-little-magic-magnetic.jpg', 4),
('Moyu AoShi GTS', 'Un Rubik''s Cube 6x6 magnétique avec des performances professionnelles.', 59.99, 'Moyu', 'https://cdn.shopify.com/s/files/1/0035/5205/1273/products/moyuaoshi6x6gtsb2_1200x1200.jpg?v=1581455423', 4),
('QiYi X-Man Shadow 6x6', 'Un Rubik''s Cube 6x6 avec une sensation de rotation fluide.', 49.99, 'QiYi', 'https://www.atoutcubes.com/24592-large_default/x-man-shadow-6x6.jpg', 4),

-- Catégorie '7x7'
('Moyu AoFu GTSM', 'Un Rubik''s Cube 7x7 magnétique pour les amateurs de gros cubes.', 69.99, 'Moyu', 'https://www.atoutcubes.com/65993-large_default/moyu-aofu-gtsm.jpg', 5),
('YJ YuFu V2 M', 'Un excellent Rubik''s Cube 7x7 avec un mécanisme fluide.', 79.99, 'YJ', 'https://cdn.shopify.com/s/files/1/0035/5205/1273/products/yufu_v2_m_black_1200x1200.jpg?v=1633461854', 5),
('X-MAN 7X7 SPARK M', 'Un Rubik''s Cube 7x7 magnétique pour une résolution fluide.', 49.99, 'QiYi', 'https://www.maskecubos.com/5242/qiyi-x-man-7x7-spark-m.jpg', 5),
('YJ YuFu V2 M', 'Un Rubik''s Cube 7x7 magnétique abordable pour les amateurs de gros cubes.', 39.99, 'YJ', 'https://www.atoutcubes.com/17460-large_default/yj-yufu-7x7-v2-m.jpg', 5),
('MoFang JiaoShi MeiLong 7x7', 'Un Rubik''s Cube 7x7 de qualité avec un prix abordable.', 44.99, 'MoFang JiaoShi', 'https://mastercubestore.com/4352-home_default/mofang-jiaoshi-meilong-7x7-black.jpg', 5),
('Yuxin Little Magic 7x7', 'Un Rubik''s Cube 7x7 économique pour une résolution agréable.', 29.99, 'Yuxin', 'https://www.speedcubefrance.com/wp-content/uploads/2020/08/Little-Magic-7-M.jpg', 5),
('Moyu AoFu WR M', 'Un Rubik''s Cube 7x7 magnétique avec des performances professionnelles.', 69.99, 'Moyu', 'https://www.atoutcubes.com/63558-large_default/moyu-aofu-wr-m-7x7.jpg', 5),
('QiYi WuJi S', 'Un Rubik''s Cube 7x7 abordable pour les amateurs de gros cubes.', 34.99, 'QiYi', 'https://cdn.shopify.com/s/files/1/0431/3209/2571/products/product-image-1681826986_1200x1200.jpg?v=1625763854', 5),

-- Catégorie 'pyraminx'
('QiYi MS Pyraminx', 'Un pyraminx magnétique avec une excellente coupe d''angles.', 14.99, 'QiYi', 'https://www.atoutcubes.com/24448-large_default/qiyi-ms-pyraminx-magnetic.jpg', 6),
('Moyu RS Magnetic Pyraminx', 'Un pyraminx magnétique avec une sensation de rotation fluide.', 19.99, 'Moyu', 'https://www.atoutcubes.com/62092-thickbox_default/moyu-rs-pyraminx-m-maglev.jpg', 6),
('MoFang JiaoShi MFJS Pyraminx', 'Un pyraminx de qualité avec un prix abordable.', 9.99, 'MoFang JiaoShi', 'https://mastercubestore.com/4126-Coolshop_Size/-mofang-jiaoshi-meilong-pyraminx-stickerless.jpg', 6),
('Gan Pyraminx', 'Un pyraminx haut de gamme pour les speedcubers.', 34.99, 'Gan', 'https://cdn.shopify.com/s/files/1/0978/8602/products/GAN-Pyraminx-Magnetic-Enhanced-UV-Stickerless-Bright.jpg?v=1681850460', 6),
('Yuxin Little Magic Pyraminx', 'Un pyraminx économique avec une résolution agréable.', 7.99, 'Yuxin', 'https://www.atoutcubes.com/45773-large_default/yuxin-little-magic-pyraminx-m.jpg', 6),
('Moyu Meilong Pyraminx', 'Un pyraminx de qualité pour une résolution fluide.', 12.99, 'Moyu', 'https://kubekings.fr/21160-large_default/meilong-pyraminx-m.jpg', 6),
('QiYi X-Man Bell Pyraminx', 'Un pyraminx avec un mécanisme innovant.', 29.99, 'QiYi', 'https://m.media-amazon.com/images/I/41QZVpf6LpL._AC_UF894,1000_QL80_.jpg', 6),

-- Catégorie 'megaminx'
('QiYi Galaxy Megaminx', 'Un megaminx avec un design lisse et des performances exceptionnelles.', 29.99, 'QiYi', 'https://www.maskecubos.com/3167/qiyi-galaxy-megaminx-concave-base-noir.jpg', 7),
('YJ YuHu V2 Megaminx', 'Un megaminx abordable pour les débutants.', 19.99, 'YJ', 'https://www.atoutcubes.com/24552-large_default/yj-yuhu-v2-m-megaminx.jpg', 7),
('Meilong Megaminx Magnetique', 'Un megaminx de qualité avec un prix abordable.', 12.90, 'Meilong', 'https://www.atoutcubes.com/46913-thickbox_default/meilong-megaminx-m.jpg', 7),
('Gan Megaminx', 'Un megaminx haut de gamme pour les speedcubers.', 69.99, 'Gan', 'https://www.atoutcubes.com/7928-large_default/gans-megamix-3x3.jpg', 7),
('Yuxin Little Magic Megaminx', 'Un megaminx économique pour une résolution agréable.', 14.99, 'Yuxin', 'https://www.atoutcubes.com/53424-large_default/yuxin-little-magic-megaminx-v3-m.jpg', 7),
('QiYi X-Man Galaxy V2 Megaminx', 'Un megaminx avec un mécanisme fluide.', 59.99, 'QiYi', 'https://ae01.alicdn.com/kf/Hb03fc7684c9a4c53b29317ad2b060207a/Qiyi-x-man-Galaxy-V2M-Cube-magique-magn-tique-Megaminx-3X3-3x3-Cube-de-vitesse-Dodecahedron.jpg_Q90.jpg_.webp', 7),

-- Catégorie 'square-1'
('YJ MGC Magnetic Square-1', 'Un square-1 magnétique pour les speedcubers.', 24.99, 'YJ', 'https://cdn.shopify.com/s/files/1/0563/5135/9136/products/Square-1MGC-Boite_1200x1200.png?v=1626801582', 8),
('QiYi MS Magnetic Square-1', 'Un square-1 magnétique pour une résolution fluide.', 34.99, 'QiYi', 'https://speedcubing.org/cdn/shop/products/Screenshot_from_2019-11-12_17-00-22.png?v=1596383573', 8),
('YJ MGC Square-1', 'Un square-1 abordable pour les amateurs de casse-tête.', 24.99, 'YJ', 'https://www.atoutcubes.com/48150-home_default/mgc-square-one-m.jpg', 8),
('Ojin Moyu MoFang Square-1', 'Un square-1 de qualité avec un prix abordable.', 13.99, 'Moyu', 'https://m.media-amazon.com/images/I/51b0gvanZEL._AC_UF894,1000_QL80_.jpg', 8),
('Yuxin Little Magic Square-1', 'Un square-1 économique pour une résolution agréable.', 14.99, 'Yuxin', 'https://www.atoutcubes.com/42636-large_default/yuxin-little-magic-square-1.jpg', 8),
('QiYi X-Man Volt Square-1', 'Un square-1 avec un mécanisme fluide.', 44.99, 'QiYi', 'https://www.maskecubos.com/5581-thickbox_default/qiyi-x-man-1-volt-v2-square-1.jpg', 8),

-- Catégorie 'skewb'
('QiYi QiCheng A Skewb', 'Un skewb abordable pour les amateurs de casse-tête.', 9.99, 'QiYi', 'https://www.speedcubefrance.com/wp-content/uploads/2023/03/QiCheng-Skewb-S.jpg', 9),
('Moyu Magnetic Skewb', 'Un skewb magnétique avec un mécanisme fluide.', 14.99, 'Moyu', 'https://www.atoutcubes.com/65976-large_default/moyu-rs-skewb-magnetique.jpg', 9),
('Ojin Moyu MoFang Skewb', 'Un skewb de qualité avec un prix abordable.', 16.90, 'Moyu', 'https://m.media-amazon.com/images/I/51pv+9z2R8L._AC_UF894,1000_QL80_.jpg', 9),
('Gan Skewb', 'Un skewb haut de gamme pour les speedcubers.', 49.99, 'Gan', 'https://m.media-amazon.com/images/I/51JmJxr+2kL.jpg', 9),
('Yuxin Little Magic Skewb', 'Un skewb économique avec une résolution agréable.', 7.99, 'Yuxin', 'https://old.cubenationshop.com/wp-content/uploads/2018/10/51vtr5q4n5L._SL1000_.jpg', 9),
('QiYi X-Man Bell Skewb', 'Un skewb avec un mécanisme innovant.', 29.99, 'QiYi', 'https://m.media-amazon.com/images/I/61nJI6MAfbL.jpg', 9);

COMMIT;
BEGIN;

SELECT setval('users_id_seq', (SELECT MAX(id) from "users"));
SELECT setval('articles_id_seq', (SELECT MAX(id) from "articles"));
SELECT setval('addresses_id_seq', (SELECT MAX(id) from "addresses"));

COMMIT;