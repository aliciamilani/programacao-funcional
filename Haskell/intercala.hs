intercala :: Eq t => [t] -> [t] -> [t] 
intercala [] [] = []
intercala [] (a:x) = (a:x)
intercala (a:x) [] = (a:x)
intercala (a:x) (b:y) = a : b : intercala x y

main :: IO ()
main = print $ intercala [1,2,3] [8,9]
