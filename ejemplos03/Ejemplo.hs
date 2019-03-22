{- Módulo con ejemplos de definición de funciones -}
module Ejemplo where

   -- Función que toma un número y le suma dos.
   f :: Int -> Int
   f x = x + 2

   -- Función que calcula el área total de un cilíndro dada su altura 
   -- y diámetro.
   areaTotal :: Float -> Float -> Float
   areaTotal h d = 2 * pi * (d/2) * (h + (d/2))

   -- Función que calcula el área total de un cilíndro dada su altura 
   -- y diámetro.
   areaTotal2 :: Float -> Float -> Float
   areaTotal2 h d = let r = (d/2) in 2 * pi * r * (h + r)

   -- Función que calcula el área total de un cilíndro dada su altura 
   -- y diámetro.
   areaTotal3 :: Float -> Float -> Float
   areaTotal3 h d = 2 * pi * r * (h + r)
      where r = (d/2)

   -- Función que calcula el valor absoluto de un número.
   absoluto :: Int -> Int
   absoluto x = if x >= 0 then x else x * (-1)

   -- Función que calcula el valor absoluto de un número.
   absoluto2 :: Int -> Int
   absoluto2 x
      | x >= 0 = x
      | x < 0 = x * (-1)

   -- Función que obtiene el nombre de un mes dado su número.
   mes :: Int -> String
   mes n
      | n == 1 = "Enero"
      | n == 2 = "Febrero"
      | n == 3 = "Marzo"
      | n == 4 = "Abril"
      | n == 5 = "Mayo"
      | n == 6 = "Junio"
      | n == 7 = "Julio"
      | n == 8 = "Agosto"
      | n == 9 = "Septiembre"
      | n == 10 = "Octubre"
      | n == 11 = "Noviembre"
      | n == 12 = "Diciembre"
      | otherwise = error "Número inválido"

   -- Función que resuelve una ecuación de segundo grado     
   ecCuad :: Float -> Float -> Float -> (Float,Float)     
   ecCuad a b c =          
      (((b*(-1)) + (sqrt (b**2-4*a*c)))  / (2*a),          
       ((b*(-1)) - (sqrt (b**2-4*a*c)))  / (2*a))

   -- Función que obtiene los factores de un número entero. 
   factores :: Int -> [Int]
   factores n = [x | x <- [1..n], mod n x == 0]

   -- Función que calcula el fibonacci de un número.
   fibonacci :: Int -> Int
   fibonacci n
      | n < 2 = 1
      | otherwise = fibonacci (n - 1) + fibonacci (n - 2)

   -- Función que calcula el fibonacci de un número.
   fibonacci2 :: Int -> Int
   fibonacci2 0 = 1
   fibonacci2 1 = 1
   fibonacci2 n = fibonacci2 (n - 1) + fibonacci2 (n - 2)

   -- Suma los primeros n números naturales
   suma :: Int -> Int
   suma 0 = 0
   suma n = n + suma (n - 1)

   -- Función que busca valores en un ambiente de evaluación
   busca :: Char -> [(Char,Int)] -> Int
   busca _ [] = error "Variable libre"
   busca i ((sub_id,value):xs) =
     if i == sub_id then value else busca i xs

   -- Suma los elementos de una lista de números enteros
   sumaLst :: [Int] -> Int
   sumaLst [] = 0
   sumaLst (x:xs) = x + (sumaLst xs)

   -- Multiplica los elementos de una lista de números enteros
   multLst :: [Int] -> Int
   multLst [] = 1 
   multLst (x:xs) = x * (multLst xs)     
