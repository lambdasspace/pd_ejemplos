-- ---------------------------------------------------------------- --
-- Programa que pide una cadena al usuario y la convierte en su     --
-- respectiva versión en Efe. Esto es, intercambia las vocales      --
-- como sigue (incluye mayúsculas):                                 --         
--                                                                  --
-- a -> afa                                                         --        
-- e -> efe                                                         --        
-- i -> ifi                                                         --        
-- o -> ofo                                                         --       
-- u -> ufu                                                         --
-- ---------------------------------------------------------------- --              
module Efe where

-- ---------------------------------------------------------------- -- 
-- Función que toma un caracter y lo convierte a su versión en Efe. --           
-- ---------------------------------------------------------------- --  
procesaChar :: Char -> String 
procesaChar 'a' = "afa" 
procesaChar 'e' = "efe" 
procesaChar 'i' = "ifi" 
procesaChar 'o' = "ofo" 
procesaChar 'u' = "ufu" 
procesaChar 'A' = "Afa" 
procesaChar 'E' = "Efe" 
procesaChar 'I' = "Ifi" 
procesaChar 'O' = "Ofo" 
procesaChar 'U' = "Ufu" 
procesaChar c = [c]

-- ---------------------------------------------------------------- --  
-- Función que toma una cadena y la convierte en su respectiva      --
-- versión en Efe.                                                  --
-- ---------------------------------------------------------------- --              
procesa :: String -> String 
procesa palabra = foldr (++) [] (map (procesaChar) palabra)

-- ---------------------------------------------------------------- --  
-- Función que pide una cadena al usuario y regresa la cadena       --
-- procesada.                                                       --
-- ---------------------------------------------------------------- -- 
pideDatos :: IO () 
pideDatos = do putStr "Introduce una cadena: "                
               entrada <- getLine                
               putStrLn $ procesa entrada

-- ---------------------------------------------------------------- --  
-- Función encargada de llevar la ejecución de todo el programa.    --              
-- ---------------------------------------------------------------- -- 
run = pideDatos 
