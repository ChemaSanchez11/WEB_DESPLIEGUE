/*
 Navicat Premium Data Transfer

 Source Server         : LocalHost [Root]
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : hispanidad

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 06/12/2022 13:21:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for proyects
-- ----------------------------
DROP TABLE IF EXISTS `proyects`;
CREATE TABLE `proyects`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ownerid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_proyect`(`ownerid` ASC) USING BTREE,
  CONSTRAINT `user_proyect` FOREIGN KEY (`ownerid`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of proyects
-- ----------------------------
INSERT INTO `proyects` VALUES (1, 'tde.png', 'Transformación Digital Educativa', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1);
INSERT INTO `proyects` VALUES (2, 'innicia.png', 'Innicia', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1);
INSERT INTO `proyects` VALUES (3, 'thining_cap.png', 'Thinking Cap', 'http://aulaemprendimientoieshispanidad.blogspot.com/', 'Aula de Emprendimiento destinada a fomentar el espíritu emprendedor.', 1);
INSERT INTO `proyects` VALUES (4, 'erasmus.png', 'Erasmus+', 'https://sites.google.com/view/erasmusieshispanidad/inicio', 'UE para apoyar la educación, la formación, la juventud y el deporte en Europa.', 1);
INSERT INTO `proyects` VALUES (5, 'aldea.png', 'Aldea', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1);
INSERT INTO `proyects` VALUES (6, 'escuela_de_paz.png', 'Escuela Espacio de Paz', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1);
INSERT INTO `proyects` VALUES (7, 'vivir_y_sentir.png', 'Vivir y sentir el patrimonio', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1);
INSERT INTO `proyects` VALUES (8, 'habitos-vida-saludable.png', 'Habitos de vida saludable', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1);
INSERT INTO `proyects` VALUES (9, 'enmarcha.png', 'En Marcha', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1);
INSERT INTO `proyects` VALUES (10, 'biblioteca-granada.png', 'Bibliotecas Granada', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1);
INSERT INTO `proyects` VALUES (11, 'aula-cine.png', 'Aula de cine', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1);
INSERT INTO `proyects` VALUES (12, 'robotica.png', 'Robótica aplicada al aula', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1);
INSERT INTO `proyects` VALUES (13, 'igualdad.png', 'Igualdad', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `departamento` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dni` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'Administrador', 'WEB', 'admin', NULL, NULL);
INSERT INTO `users` VALUES (2, 'juanbautista.egea', 'Juan Bautista', 'Egea Muñoz', 'user', 'lengua-literatura', NULL);
INSERT INTO `users` VALUES (3, 'anamaria.morilla', 'Ana Maria', 'Morilla Palacios', 'user', 'lengua-literatura', NULL);
INSERT INTO `users` VALUES (4, 'estela.perez', 'Estela', 'Pérez Bosch', 'user', 'lengua-literatura', NULL);
INSERT INTO `users` VALUES (5, 'mariajose.rodriguez', 'María José (JD)', 'Rodríguez Faciaben', 'user', 'lengua-literatura', NULL);
INSERT INTO `users` VALUES (6, 'maravillas.viciana', 'Maravillas', 'Viciana Ortega', 'user', 'lengua-literatura', NULL);
INSERT INTO `users` VALUES (7, 'manuelangel.castillo', 'Manuel Ángel', 'Castillo Rueda', 'user', 'geografia-historia', NULL);
INSERT INTO `users` VALUES (8, 'vanesa.garcia', 'Vanesa Montserrat (ING)', 'García Hernández', 'user', 'geografia-historia', NULL);
INSERT INTO `users` VALUES (9, 'angelcustodia.leyva', 'Ángel Custodio', 'Leyva Olmos', 'user', 'geografia-historia', NULL);
INSERT INTO `users` VALUES (10, 'eusebia.molina', 'Eusebia', 'Molina Titos', 'user', 'geografia-historia', NULL);
INSERT INTO `users` VALUES (11, 'andrea.santana', 'Andrea del Carmen', 'Santana Merchán', 'user', 'geografia-historia', NULL);
INSERT INTO `users` VALUES (12, 'mariasoledad.correa', 'María Soledad', 'Correa Bueno', 'user', 'ingles', NULL);
INSERT INTO `users` VALUES (13, 'rocio.framit', 'Rocío', 'Framit Ávila', 'user', 'ingles', NULL);
INSERT INTO `users` VALUES (14, 'patricia.navarrete', 'Patricia', 'Navarrete Illescas', 'user', 'ingles', NULL);
INSERT INTO `users` VALUES (15, 'guillermo.perez', 'Guillermo', 'Pérez Merino', 'user', 'ingles', NULL);
INSERT INTO `users` VALUES (16, 'ana.rios', 'Ana', 'Ríos Sánchez', 'user', 'ingles', NULL);
INSERT INTO `users` VALUES (17, 'susana.rueda', 'Susana', 'Rueda Rodríguez', 'user', 'ingles', NULL);
INSERT INTO `users` VALUES (18, 'maria.toril', 'Maria (JD)', 'Toril Gómez', 'user', 'frances', NULL);
INSERT INTO `users` VALUES (19, 'mariamagdalena.martin', 'María Magdalena (JD)', 'Martín Tamayo', 'user', 'cultura-clasica', NULL);
INSERT INTO `users` VALUES (20, 'miguel.melero', 'Miguel Ángel (JD)', 'Melero Martínez', 'user', 'filosofia', NULL);
INSERT INTO `users` VALUES (21, 'angela.morales', 'Ángela', 'Morales González', 'user', 'economia', NULL);
INSERT INTO `users` VALUES (22, 'maria.muñoz', 'María del Carmen (JD)', 'Muñoz Sánchez', 'user', 'economia', NULL);
INSERT INTO `users` VALUES (23, 'emilia.garcia', 'Emilia (JD)', 'García Cuberos', 'user', 'fol', NULL);
INSERT INTO `users` VALUES (24, 'maria.casado', 'María Presentación (ING)', 'Casado Rodríguez', 'user', 'matematicas', NULL);
INSERT INTO `users` VALUES (25, 'gregorio,carrillo', 'Gregorio', 'Carrillo de Albornoz', 'user', 'matematicas', NULL);
INSERT INTO `users` VALUES (26, 'mariafranciasca.guterrez', 'María Francisca', 'Gutiérrez Díaz', 'user', 'matematicas', NULL);
INSERT INTO `users` VALUES (27, 'jose.lopez', 'José (ING)', 'López Jiménez', 'user', 'matematicas', NULL);
INSERT INTO `users` VALUES (28, 'juanfelix.muñoz', 'Juan Félix (ING) (JD)', 'Muñoz Sánchez', 'user', 'matematicas', NULL);
INSERT INTO `users` VALUES (29, 'franciscojose.esteban', 'Francisco José (ING)', 'Esteban Delgado', 'user', 'biologia-geologia', NULL);
INSERT INTO `users` VALUES (30, 'mariaelena.medina', 'María Elena (ING) (JD)', 'Medina Contreras', 'user', 'biologia-geologia', NULL);
INSERT INTO `users` VALUES (31, 'jesus.piñar', 'Jesús', 'Piñar Ruiz', 'user', 'biologia-geologia', NULL);
INSERT INTO `users` VALUES (32, 'antoniojose.blas', 'Antonio José (JD)', 'Blas Murillo', 'user', 'fisica-quimica', NULL);
INSERT INTO `users` VALUES (33, 'josemanuel.fernandez', 'José Manuel', 'Fernández Ortega', 'user', 'fisica-quimica', NULL);
INSERT INTO `users` VALUES (34, 'susanateresa.garcia', 'Susana Teresa', 'García Palma', 'user', 'fisica-quimica', NULL);
INSERT INTO `users` VALUES (35, 'francisco.avila', 'Francisco (JD)', 'Ávila Expósito', 'user', 'tecnologia', NULL);
INSERT INTO `users` VALUES (36, 'josemiguel.carreño', 'José Miguel', 'Carreño Albertos', 'user', 'tecnologia', NULL);
INSERT INTO `users` VALUES (37, 'enriquefrancsco.jimenez', 'Enrique Francisco', 'Jiménez Cazalilla', 'user', 'tecnologia', NULL);
INSERT INTO `users` VALUES (38, 'ignacio.molina', 'Ignacio (ING) (JD)', 'Molina Vázquez', 'user', 'educacion-fisica', NULL);
INSERT INTO `users` VALUES (39, 'francisca.gutierrez', 'Francisca (JD)', 'Gutiérrez Funes', 'user', 'musica', NULL);
INSERT INTO `users` VALUES (40, 'mariadolores.moreno', 'María Dolores (JD)', 'Moreno Guillén', 'user', 'dibujo', NULL);
INSERT INTO `users` VALUES (41, 'mariacarmen.marcos', 'María del Carmen', 'Marco Ríos', 'user', 'orientacion', NULL);
INSERT INTO `users` VALUES (42, 'mariaeva.perez', 'María Eva (JD)', 'Pérez Galera', 'user', 'orientacion', NULL);
INSERT INTO `users` VALUES (43, 'guillermo.trujillo', 'Guillermo', 'Trujillo Serrano', 'user', 'orientacion', NULL);
INSERT INTO `users` VALUES (44, 'maria.toril', 'María (JD)', 'Toril Gómez', 'user', 'formacion-evaluacion', NULL);
INSERT INTO `users` VALUES (45, 'andreacarmen.santana', 'Andrea del Carmen (ING)', 'Santana Merchán', 'user', 'relaciones-erasmus', NULL);
INSERT INTO `users` VALUES (46, 'rosa.illan', 'Rosa', 'Illán Ortega', 'user', 'imagen', NULL);
INSERT INTO `users` VALUES (47, 'ana.palomino', 'Ana', 'Palomino Navarrete', 'user', 'imagen', NULL);
INSERT INTO `users` VALUES (48, 'margarita.rodriguez', 'Margarita (JD)', 'Rodríguez González', 'user', 'imagen', NULL);
INSERT INTO `users` VALUES (49, 'maria.trasierra', 'Maria', 'Trasierra Rodríguez', 'user', 'imagen', NULL);
INSERT INTO `users` VALUES (51, 'ana.garcia', 'Ana', 'García Poza', 'user', 'administracion', NULL);
INSERT INTO `users` VALUES (52, 'juan.garcia', 'Juan Andrés', 'García Poza', 'user', 'administracion', NULL);
INSERT INTO `users` VALUES (53, 'miriam.gonzalez', 'Miriam', 'González Castilla', 'user', 'administracion', NULL);
INSERT INTO `users` VALUES (54, 'mariajose.martos', 'María José', 'Martos Martínez', 'user', 'administracion', NULL);
INSERT INTO `users` VALUES (55, 'alejandra.nogueras', 'Alejandra', 'Nogueras BrÍas', 'user', 'administracion', NULL);
INSERT INTO `users` VALUES (56, 'manuel.ramirez', 'Manuel', 'Ramírez Ibáñez', 'user', 'administracion', NULL);
INSERT INTO `users` VALUES (57, 'mercedes.ruiz', 'Mercedes', 'Ruiz Almazán', 'user', 'administracion', NULL);
INSERT INTO `users` VALUES (58, 'mariaelena.torres', 'María Elena (JD)', 'Torres Llorens', 'user', 'administracion', NULL);
INSERT INTO `users` VALUES (59, 'franciscojose.contreras', 'Francisco José', 'Contreras Aragón', 'user', 'mecanica', NULL);
INSERT INTO `users` VALUES (60, 'daniel.garnica', 'Daniel (JD)', 'Garnica López', 'user', 'mecanica', NULL);
INSERT INTO `users` VALUES (61, 'alberto.jimenez', 'Alberto', 'Jiménez Martínez', 'user', 'mecanica', NULL);
INSERT INTO `users` VALUES (62, 'manuel.morilla', 'Manuel', 'Morilla Álvarez', 'user', 'mecanica', NULL);
INSERT INTO `users` VALUES (63, 'miguelangel.herrador', 'Miguel Ángel (JD)', 'Herrador González', 'user', 'electricidad-electronica', NULL);
INSERT INTO `users` VALUES (64, 'manueljesus.jurado', 'Manuel Jesús', 'Jurado Ruiz', 'user', 'electricidad-electronica', NULL);
INSERT INTO `users` VALUES (65, 'mariacarmen.puertas', 'María del Carmen', 'Puertas Morales', 'user', 'electricidad-electronica', NULL);
INSERT INTO `users` VALUES (66, 'david.rodriguez', 'David', 'Rodríguez Conejo', 'user', 'electricidad-electronica', NULL);
INSERT INTO `users` VALUES (67, 'juanantonio.rodriguez', 'Juan Antonio', 'Rodríguez Gallardo', 'user', 'electricidad-electronica', NULL);
INSERT INTO `users` VALUES (68, 'juanmanuel.rodriguez', 'Juan Manuel', 'Rodríguez Sánchez', 'user', 'electricidad-electronica', NULL);
INSERT INTO `users` VALUES (69, 'mariajose.torres', 'María José', 'Torres Pérez', 'user', 'electricidad-electronica', NULL);
INSERT INTO `users` VALUES (70, 'jose.urbano', 'José', 'Urbano Zamora', 'user', 'electricidad-electronica', NULL);

SET FOREIGN_KEY_CHECKS = 1;
