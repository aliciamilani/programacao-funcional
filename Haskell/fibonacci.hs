main = do
  num <- getLine
  putStr "Fibonnaci: "
  print (fibonacci (read num))

fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

-- ghc -o fibonacci fibonacci.hs
-- ./fibonacci