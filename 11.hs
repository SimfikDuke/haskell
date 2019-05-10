-- 11. Реализовать на языке Haskell функцию, которая, чередуя элементы списков [a, b, ...] и [1, 2, ...], образует новый список [a, 1, b, 2, ...].
mergelst [] x = if x == [] then x else mergelst x []
mergelst (x:xs) y = x : mergelst y xs

main = do
print $ mergelst ["1", "2", "3"] ["a", "b", "c"]
print $ mergelst ["1", "2", "3"] ["a"]
-- ["1","a","2","b","3","c"]
-- ["1","a","2","3"]
