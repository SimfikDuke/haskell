-- 3. Реализовать на языке Haskell функцию, удаляющую из исходного списка элементы с четными номерами.

delsecond [] = []
delsecond (x:[]) = [x]
delsecond (x1:x2:x) = x1:delsecond x

main = do
print (delsecond [2, 5..22])
print (delsecond [1, 2, 3])
print (delsecond [1])