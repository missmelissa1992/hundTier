Select P.cod_publicacion As 'Codigo publicacion', U.nombre AS 'Usuario responsable' , A.nombre AS 'Nombre Perro', R.nombre_raza AS 'Raza'
From publicacion P Join Usuarios U on
U.id_usuario = P.usuario_responsable  
Join Tipo_Animal  T ON P.tipo_animal = T.codigo_animal 
Join Animal A ON ( A.id_animal = P.id_animal AND A.cod_tipo_animal = P.tipo_animal)
JOIN Razas R ON A.cod_raza = R.cod_raza