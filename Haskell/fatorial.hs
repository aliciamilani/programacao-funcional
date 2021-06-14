main = do
  num <- getLine
  putStr "O fatorial desse número é: "
  print (fatorial (read num))

fatorial :: Integer -> Integer
fatorial 0 = 1
fatorial 1 = 1
fatorial n = n * fatorial (n -1)

-- ghc -o fatorial fatorial.hs
-- ./fatorial