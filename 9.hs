-- 9. Реализовать на языке Haskell функцию которая увеличивает элементы исходного списка в 10 раз.
fmul = map (*10)
main = do
print $ fmul [1, 2 .. 10]
-- [10,20,30,40,50,60,70,80,90,100]
