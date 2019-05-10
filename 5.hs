-- 5. Реализовать на языке Haskell функцию, заменяющую в исходном списке два подряд идущих одинаковых элемента одним.
deldubl [] = []
deldubl (x:[]) = [x]
deldubl (x1:x2:y) = 
    if x1 == x2 then x1:deldubl y 
        else x1:deldubl (x2:y)

main = do
print (deldubl [1,2,3,3,4,5,5,2])