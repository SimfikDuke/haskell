1. Реализовать на языке Haskell функцию вычисления суммы элементов списка.

mysum [] = 0
mysum lst = head lst + mysum (tail lst)

main = do
print (mysum [1..5])