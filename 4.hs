-- 4. Реализовать на языке Haskell функцию, которая раяделяет исходный список из целых чисел на два списка: список положительных чисел и список отрицательных чисел.
separate x = [(filter (<0) x), (filter (>0) x)]

main = do
print (separate [-10,-9..10])