-- 12. Реализовать на языке Haskell функцию ПЕРЕСЕЧЕНИЕ, формирующую пересечение двух множеств.
contain [] x = False
contain (x1:xs) x = if x1 == x then True else contain xs x

intersect l1 l2 = filter (\x -> contain l2 x) l1

main = do
print $ intersect [1, 2, 3, 4, 5] [5, 3]