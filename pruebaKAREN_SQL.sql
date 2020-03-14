--se insertaron datos en tabla curso --
INSERT INTO CURSO ( id_curso , nombre_curso , cantidad_alumnos , fecha_evaluaciones) 
VALUES ('0024JAVA','Full_Stack_Java',10, '10/03/2020') ;
INSERT INTO CURSO ( id_curso , nombre_curso , cantidad_alumnos , fecha_evaluaciones) 
VALUES ('0025JAVA','APP_Moviles',9, '13/03/2020') ;
INSERT INTO CURSO ( id_curso , nombre_curso , cantidad_alumnos , fecha_evaluaciones) 
VALUES ('0026JAVA','diseño_UI/UX',8, '15/03/2020') ;
--se insertaron datos en tabla evaluacion --
INSERT INTO evaluacion (id_pregunta , puntaje_total , puntaje_obtenido , puntaje_malas , puntaje_omitidas, alumno_rut, test_id_test )  
VALUES ('1_evaluacion_001','15 puntos', 15, 0, 0, '8.905.973-9',001); 
INSERT INTO evaluacion (id_pregunta , puntaje_total , puntaje_obtenido , puntaje_malas , puntaje_omitidas, alumno_rut, test_id_test )  
VALUES ('2_evaluacion_001','10 puntos', 10, 0, 5, '7.905.973-k',0012);
INSERT INTO evaluacion (id_pregunta , puntaje_total , puntaje_obtenido , puntaje_malas , puntaje_omitidas, alumno_rut, test_id_test )  
VALUES ('3_evaluacion_001','20 puntos', 10, 5, 5, '11.905.978-9',0013);
INSERT INTO evaluacion (id_pregunta , puntaje_total , puntaje_obtenido , puntaje_malas , puntaje_omitidas, alumno_rut, test_id_test )  
VALUES ('4_evaluacion_001','8 puntos', 8, 0, 0, '8.000.973-9',0014);
INSERT INTO evaluacion (id_pregunta , puntaje_total , puntaje_obtenido , puntaje_malas , puntaje_omitidas, alumno_rut, test_id_test )  
VALUES ('5_evaluacion_001','15 puntos', 10, 0, 5, '8.905.000-9',0015);
--se insertaron datos en tabla notas --
INSERT INTO notas (id_notas ,nota_alum , aprobado,  puntaje_total, puntos_buenos  ,puntos_malos , puntos_omitidos ,test_id_test) 
VALUES ('nota1_ks_23', 7.0, 'v', 100,100, 0, 0, '0089');
INSERT INTO notas (id_notas ,nota_alum , aprobado,  puntaje_total, puntos_buenos  ,puntos_malos , puntos_omitidos ,test_id_test) 
VALUES ('nota1_jp_23', 6.0, 'v', 100, 80, 10, 10, '0079');
INSERT INTO notas (id_notas ,nota_alum , aprobado,  puntaje_total, puntos_buenos  ,puntos_malos , puntos_omitidos ,test_id_test) 
VALUES ('nota1_ju_23', 5.0, 'v', 100, 60, 10, 30, '0086');
INSERT INTO notas (id_notas ,nota_alum , aprobado,  puntaje_total, puntos_buenos  ,puntos_malos , puntos_omitidos ,test_id_test) 
VALUES ('nota1_mp_23', 7.0, 'v', 100,100, 0, 0, '0088');
INSERT INTO notas (id_notas ,nota_alum , aprobado,  puntaje_total, puntos_buenos  ,puntos_malos , puntos_omitidos ,test_id_test) 
VALUES ('nota1_cp_23', 4.0, 'v', 100, 50, 25, 25, '0083');
--se trato de insertar datos en tabla alumno --
INSERT INTO alumno (rut ,nombre_alumno , num_sala , notas ,  curso_id_curso) 
VALUES (8905973.9, 'karen_sepulveda', 'sala23', 7.0 ,'1023JAVA');
--se trato de insertar datos en tabla test --
INSERT INTO test (id_test, nombre_test, descripcion, programa,unidad,autor_test, fecha_creacion, evalu_test_mnum_evalu_test,
alumno_nombre_alumno,alumno_curso_id_curso)
VALUES (0089, 'evaluacion001', 'menu_de_algoritmosPSEINT','PSeint','PSeintModulo1','BRIAN SHULZ','10/02/2020',
'EV0012','KAREN_SEPULVEDA','1023JAVA');

--numero de evaluaciones por curso --
SELECT 'Full_Stack_Java',COUNT(fecha_evaluaciones)as num_evaluaciones FROM curso; 
SELECT 'APP_Moviles',COUNT(fecha_evaluaciones)as num_evaluaciones FROM curso;
SELECT 'diseño_UI/UX',COUNT(fecha_evaluaciones)as num_evaluaciones FROM curso;
--cuantos alumnos hay en cada curso --
SELECT 'Full_Stack_Java' ,count(cantidad_alumnos)from curso ;
SELECT 'APP_Moviles' ,count(cantidad_alumnos)from curso ;
SELECT 'diseño_UI/UX' ,count(cantidad_alumnos)from curso ;
--notas estudiantes aprueban sobre nota minima --
SELECT id_notas,nota_alum FROM NOTAS WHERE nota_alum > 4.0;



