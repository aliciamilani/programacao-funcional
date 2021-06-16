main = do
  num <- getLine
  putStr "O fatorial desse número é: "
  print (fatcalda (read num))

fatcalda :: Integer -> Integer
fatcalda n = fataux n 1
       where
             fataux n parcial | n == 0 = parcial
                              | n > 0 = fataux (n-1) (n*parcial)

-- ghc -o fatorial_cauda fatorial_cauda.hs
-- ./fatorial_cauda