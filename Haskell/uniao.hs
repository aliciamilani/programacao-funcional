pertence :: Eq t => t -> [t] -> Bool
pertence a [] = False
pertence a (x:z) = if (a == x) then True
                               else pertence a z

uniao:: Eq t => [t] -> [t] -> [t]
uniao [] l = l
uniao (x:xz) l = if pertence x l then uniao xz l
                                  else x: uniao xz l

main :: IO ()
main = print $ uniao [3,6,5,7] [2,9,7,5,1]

-- ghc -o uniao uniao.hs
-- ./uniao