-- -------------------------------------------------------------------------- -- 
-- Progama que permite consultar o modificar los datos sobre distintos        -- 
-- pokemones.                                                                 -- 
-- -------------------------------------------------------------------------- -- 
module Pokedex where

import Data.List 
import Data.List.Split 
import System.IO

-- Archivo que almacena los datos de los pokemones. 
baseDatos = "pokemones.txt"
-- Sinónomo para los criterios de búsqueda. 
type Criterio = String 
-- Sinónimo para los resultados de una consulta. 
type Resultado = [String]

-- -------------------------------------------------------------------------- -- 
-- Función que carga los datos de los pokemones desde el archivo de texto.    -- 
-- -------------------------------------------------------------------------- -- 
cargaBase :: IO [[String]]
cargaBase = catchIOError try manipulador

try :: IO [[String]] 
try = do contenido <- readFile baseDatos          
         return $ map (splitOn "|") (splitOn "\n" contenido)

manipulador :: IOError -> IO [[String]] 
manipulador ioe = return [] 

-- -------------------------------------------------------------------------- -- 
-- Aplica formato a cada pokémon.                                             -- 
-- -------------------------------------------------------------------------- -- 
construye :: [String] -> String 
construye datos = "No. " ++ (datos !! 0) ++ "\n" ++ "Nombre: " ++                    
                 (datos !! 1) ++ "\n" ++ (datos !! 2) ++ "\n" ++                   
                 (datos !! 3) ++ "\n"

-- -------------------------------------------------------------------------- -- 
-- Función que busca una cadena en una lista de listas.                       -- 
-- -------------------------------------------------------------------------- -- 
busca :: [[String]] -> Criterio -> Resultado 
busca [] _ = [] 
busca (x:xs) c     
	| isInfixOf c (x !! 0) = (construye x):(busca xs c)     
	| isInfixOf c (x !! 1) = (construye x):(busca xs c)     
	| otherwise = busca xs c

-- -------------------------------------------------------------------------- -- 
-- Despliega mediante funciones de entrada y salida los datos de cada pokemon -- 
-- obtenido.                                                                  -- 
-- -------------------------------------------------------------------------- -- 
despliega :: Resultado -> IO () 
despliega [] = putStrLn "" 
despliega (x:xs) = do putStrLn $ "\n" ++ x                       
                      despliega xs

-- -------------------------------------------------------------------------- -- 
-- Función que se encarga de seleccionar todos los pokemones cuyo número o    -- 
-- nombre contienen el criterio dado.                                         -- 
-- -------------------------------------------------------------------------- -- 
selecciona :: IO () 
selecciona = do putStr "\n\nNombre o número: "                 
                criterio <- getLine                 
                pokemones <- cargaBase                 
                let res = busca pokemones criterio in                     
               	if null res then                         
                      putStr "\nNo encontrado.\n\n"                     
                   else                         
			             despliega res

-- -------------------------------------------------------------------------- -- 
-- Función que pide los datos de un pokemon al usuario y construye la cadena  -- 
-- que lo representa.                                                         -- 
-- -------------------------------------------------------------------------- -- 
nuevoPokemon :: IO () 
nuevoPokemon = do putStr "\n\nNúmero: "                   
                  num <- getLine                   
                  putStr "Nombre: "                   
                  nom <- getLine                   
                  putStr "Tipos (separados por comas): "                   
                  tip <- getLine                   
                  putStr "Descripción: "                   
                  desc <- getLine                   
                  appendFile baseDatos ("\n"++num++"|"++nom++"|"++tip ++"|"++desc)        
                  putStr "\nPokémon guardado.\n\n"

-- -------------------------------------------------------------------------- -- 
-- Función que muestra un menú de opciones al usuario:                        -- 
-- [1] Consultar un pokémon.                                                  -- 
-- [2] Dar de alta un pokémon.                                                -- 
-- [3] Salir.                                                                 -- 
-- La función regresa la opción del usuario.                                  -- 
-- -------------------------------------------------------------------------- -- 
muestraMenu :: IO Char 
muestraMenu = do putStrLn "Por favor introduce una opción: "                  
                 putStrLn "[1] Consultar un pokémon"                  
                 putStrLn "[2] Dar de alta un pokémon"                  
                 putStrLn "[3] Salir"                  
                 putStr "Opción: "                  
                 opcion <- getChar                  
                 return opcion

-- -------------------------------------------------------------------------- -- 
-- Función encargada de procesar las opciones elegidas por el usuario.        -- 
-- -------------------------------------------------------------------------- -- 
procesa :: Char -> IO () 
procesa '1' = selecciona 
procesa '2' = nuevoPokemon 
procesa '3' = putStr "\n\nSaliendo...\n" 
procesa _ = putStr "\n\nOpción no válida.\n\n"

-- -------------------------------------------------------------------------- -- 
-- Función encargada de llevar la ejecución de todo el programa interactivo.  -- 
-- -------------------------------------------------------------------------- -- 
main :: IO () 
main = do c <- muestraMenu           
          procesa c           
          if c == '3' then 
             putStr "Adiós\n" 
          else 
             main 