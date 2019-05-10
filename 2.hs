-- 2. Реализовать на языке Haskell функцию нахождения максимального элемента списка.

mymax :: Integral a => [a] -> a
mymax (x:[]) = x
mymax (x:xs) = maxof x (mymax xs)
    where maxof x y = if x > y then x else y

main = do
print (mymax [1, 6, 4])