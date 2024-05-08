import Data.Char

--crear funcion para cifrar un caracter 
atbashChar :: Char -> Char  --funcion para recibir caracter
atbashChar c --recibe un caracter en este caso sera la letra c (variableaux)
    --Si es minúscula entra en esta opcion y el cifrado es que la letra A se convierte a la letra Z
    --se va a calcular el valor de la letraa cifrada restando con la posicion de la letra original , esta resta se hace en codigo ASCII 
    --luego se encarga de restar el resultado del valor ASCII de z , esto hara que se invierta la posicion del alfabeto
    --un ejmplo seria : si c es 'a', entonces ord c - ord 'a' sería 0, y el resultado sería 'z'. Si c es 'b', entonces ord c - ord 'a' sería 1, y el resultado sería 'y', y así sucesivamente.
    | isAsciiLower c = chr (ord 'z' - (ord c - ord 'a'))   
    | isAsciiUpper c = chr (ord 'Z' - (ord c - ord 'A'))  -- Si es mayúscula
    | otherwise = c  -- Si no es una letra, se mantiene igual

-- Función para cifrar un texto completo usando el cifrado Atbash
atbash :: String -> String
--hace recorrido de toda la funcion atbashChar el cual es el caracter a codificar
atbash = map atbashChar

-- Ejemplo de uso
main :: IO ()
main = do
    --entrada de texto original (el que sera codificado)
    let textoOrig = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    putStrLn $ "Texto original: " ++ textoOrig
    putStrLn $ "Texto cifrado: " ++ atbash textoOrig
    --se codifica mediante la funcion atbash el texto original 