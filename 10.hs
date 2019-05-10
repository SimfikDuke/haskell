-- 10. Реализовать на языке Haskell функцию, вычисляющую скалярное произведение векторов, заданных списками целых чисел.
sepvector ([]:x) = []
sepvector x = [map head x] ++ sepvector (map tail x)

mul x = foldl (\acc2 v -> acc2 * v) 1 x

scalarmul x = sum $ map mul $ sepvector x

main = do
print (scalarmul [[1, 2, 3], [2, 3, 6], [5, 2, 4]])
