-- 7. Реализовать на языке Haskell функцию, заменяющую в исходном списке все вхождения заданного значения другим.
m lst from to = map 
    (\x -> if x == from
    then to else x) lst

main = do
print $ m [1,2,3,2,3] 2 5