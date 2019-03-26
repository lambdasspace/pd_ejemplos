module Archivos where

import System.IO

-- Función que abre el archivo "pokemones.txt", muestra su contenido 
-- en pantalla y cierra el archivo.
lectorDatos :: IO () 
lectorDatos = do contenedor <- openFile "pokemones.txt" ReadMode                  
                 contenido <- hGetContents contenedor                  
                 putStr contenido                  
                 hClose contenedor

-- Función principal, ejecuta las funciones correspondientes en 
-- secuencia.
main :: IO () 
main = lectorDatos
