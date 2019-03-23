{- Módulo con ejemplos de definición de funciones -}
module Ejemplo where

   -- Un punto es una pareja de flotantes.
   type Punto = (Float, Float)

   -- Función que calcula la distancia entre dos puntos.
   distancia :: Punto -> Punto -> Float
   distancia (x1,y1) (x2,y2) = sqrt ((x2 - x1)**2 + (y2 - y1)**2)

   -- Se representa una pila con listas.
   type Pila t = [t]

   -- Función que extrae el último elemento que ingreso en una 
   -- Pila de números enteros.
   pop :: Pila Int -> Int
   pop [] = error "La pila está vacía"
   pop (x:xs) = x

   -- Función que añade un elemento en una Pila de números enteros.
   push :: Int -> Pila Int -> Pila Int
   push x p = x:p

   data Natural = Cero | Suc Natural

   data ArbolB = Void
               | Tree Int ArbolB ArbolB

   data ArbolB2 a = Void2
                | Tree2 a (ArbolB2 a) (ArbolB2 a)

   data ArbolB3 a = Void3
                | Tree3 a (ArbolB3 a) (ArbolB3 a) 
                deriving (Show)

   suma :: Natural -> Natural -> Natural
   suma Cero n = n
   suma (Suc n) m = Suc (suma n m)

   producto :: Natural -> Natural -> Natural
   producto Cero _ = Cero
   producto (Suc n) m = suma m (producto n m)

   inorden :: (ArbolB a) -> [a]
   inorden Void = []
   inorden (Tree cbz izq der) = 
      (inorden izq) ++ [cbz] ++ (inorden der)

   preorden :: (ArbolB a) -> [a]
   preorden Void = []
   preorden (Tree cbz izq der) = 
      [cbz] ++ (preorden izq) ++ (preorden der)

   postorden :: (ArbolB a) -> [a]
   postorden (Tree cbz izq der) = 
      (postorden izq) ++ (postorden der) ++ [cbz]

   data Figura = Cuadrado Float
               | Circulo Float (Float, Float) 
               deriving (Show)         

   getLado :: Cuadrado -> Float
   getLado (Cuadrado lado) = lado

   getRadio :: Circulo -> Float
   getRacio (Circulo radio _) = radio

   getCentro :: Circulo -> (Float, Float)
   getCentro (Circulo _ centro) = centro

   data Figura2 = Cuadrado {lado :: Float}
               | Circulo  {radio :: Float, centro :: (Float, Float)} 
               deriving (Show)

   instance Show Natural where
      show Cero = "0"
      show (Suc n) = "(S " ++ show n ++ ")"

   class Eq' a where
      (==) :: a -> a -> Bool
      (/=) :: a -> a -> Bool

      x == y = not (x /= y)
      x /= y = not (x == y)      