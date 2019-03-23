module Colecciones where

   -- Clase de tipos Coleccion para estructuras de datos.
   class Coleccion a where

      -- Funciones mínimas para pertenecer a Coleccion
      agrega :: (Eq e) => a e -> e -> a e
      eliminaUltimo :: (Eq e) => a e -> a e
      contiene :: (Eq e) => a e -> e -> Bool

   -- Tipo de dato abstracto Lista
   data Lista a = Empty
                | Cons a (Lista a)

   -- Implementación de la clase Coleccion
   instance Coleccion Lista where
   
      -- agrega
      agrega lista e = (Cons e lista)
 
      -- eliminaUltimo
      eliminaUltimo Empty = Empty
      eliminaUltimo (Cons x Empty) = Empty
      eliminaUltimo (Cons x xs) = Cons x (elimina xs)

      -- contiene
      contiene Empty _ = False
      contiene (Cons x xs) e = if x == e then True else contiene xs e

   -- Implementación de la clase Show
   -- La variable de tipo a debe ser parte de Show.
   instance (Show a) => Show (Lista a) where
   
      -- show
      show Empty = "[]"
      show lista = "[" ++ (construye lista) ++ "]"

   -- Función que convierte una lista a cadena.
   construye :: (Show a) => (Lista a) -> String
   construye (Cons x Empty) = show x
   construye (Cons x xs) = show x + ", " ++ construye xs
   