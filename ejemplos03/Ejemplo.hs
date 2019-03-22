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
