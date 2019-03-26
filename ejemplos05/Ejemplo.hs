{- Módulo con ejemplos de definición de funciones -}
module Ejemplo where

    prueba :: IO Char 
    prueba = getChar >>= (\x -> return x)

    prueba2 :: IO Char 
    prueba2 = do x <- getChar             
               return x

    l1 = [1..10]

    comprension :: [(Int, Int)] 
    comprension = [(x,y) | x <- l1, y <- l1, x + y == 7]

    monada :: [(Int, Int)] 
    monada = do x <- l1             
                y <- l1             
                if (x + y == 7) then return (x,y) else []

    -- Función que obtiene el primer elemento de una lista.
    primero :: [a] -> Maybe a
    primero [] = Nothing
    primero (x:xs) = Just x              

               