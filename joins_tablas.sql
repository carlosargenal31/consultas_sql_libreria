SELECT 
    v.ventaID, v.libroID, v.fechaventa, v.cantidad,
    l.libroID, l.titulo, l.aniopublicacion, l.precio, l.stock,
    a.autorID, a.nombre as autor_nombre, a.apellido as autor_apellido, a.nacionalidad
FROM 
    `libreria`.`ventas` v
JOIN 
    `libreria`.`libros` l ON v.libroID = l.libroID
JOIN 
    `libreria`.`autores` a ON l.autorID = a.autorID
order by ventaID;