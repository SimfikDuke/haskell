# Haskell  
<details><summary>Задача 1</summary>  
<p>  

```haskell  
-- 1. Реализовать на языке Haskell функцию вычисления суммы элементов списка.
mysum [] = 0
mysum lst = head lst + mysum (tail lst)

main = do
print (mysum [1..5])
-- 15
```  
</p>
</details>  
<details><summary>Задача 2</summary>  
<p>  

```haskell
-- 2. Реализовать на языке Haskell функцию нахождения максимального элемента списка.
mymax :: Integral a => [a] -> a
mymax (x:[]) = x
mymax (x:xs) = maxof x (mymax xs)
    where maxof x y = if x > y then x else y

main = do
print (mymax [1, 6, 4])
-- 6
```  
</p>
</details>  
<details><summary>Задача 3</summary>  
<p>  

```haskell
-- 3. Реализовать на языке Haskell функцию, удаляющую из исходного списка элементы с четными номерами.
delsecond [] = []
delsecond (x:[]) = [x]
delsecond (x1:x2:x) = x1:delsecond x

main = do
print (delsecond [2, 5..22])
print (delsecond [1, 2, 3])
print (delsecond [1])
-- [2,8,14,20]
-- [1,3]
-- [1]
```  
</p>
</details>  
<details><summary>Задача 4</summary>  
<p>  

```haskell
-- 4. Реализовать на языке Haskell функцию, которая разделяет исходный список из целых чисел на два списка: список положительных чисел и список отрицательных чисел.
separate x = [(filter (<0) x), (filter (>0) x)]

main = do
print (separate [-10,-9..10])
-- [[-10,-9,-8,-7,-6,-5,-4,-3,-2,-1],[1,2,3,4,5,6,7,8,9,10]]
```  
</p>
</details>  
<details><summary>Задача 5</summary>  
<p>  

```haskell
-- 5. Реализовать на языке Haskell функцию, заменяющую в исходном списке два подряд идущих одинаковых элемента одним.
deldubl [] = []
deldubl (x:[]) = [x]
deldubl (x1:x2:y) = 
    if x1 == x2 then x1:deldubl y 
        else x1:deldubl (x2:y)

main = do
print (deldubl [1,2,3,3,4,5,5,2])
-- [1,2,3,4,5,2]
```  
</p>
</details>  
<details><summary>Задача 6</summary>  
<p>  

```haskell
-- 6. Реализовать на языке Haskell функцию, которая преобразует исходный список в список, в котором элементы записаны в обратном к исходному порядке.
rvrs [] = []
rvrs (x:xs) = rvrs xs ++ [x]

main = do
print (rvrs [1,2..10])
-- [10,9,8,7,6,5,4,3,2,1]
```  
</p>
</details>  
<details><summary>Задача 7</summary>  
<p>  

```haskell
-- 7. Реализовать на языке Haskell функцию, заменяющую в исходном списке все вхождения заданного значения другим.
m lst from to = map 
    (\x -> if x == from
    then to else x) lst

main = do
print $ m [1,2,3,2,3] 2 5
-- [1,5,3,5,3]
```  
</p>
</details>  
<details><summary>Задача 8</summary>  
<p>  

```haskell
-- 8. Реализовать на языке Haskell функцию которая увеличивает элементы исходного списка на единицу.
fplus = map (+1)
main = do
print $ fplus [1, 2 .. 10]
-- [2,3,4,5,6,7,8,9,10,11]
```  
</p>
</details>  
<details><summary>Задача 9</summary>  
<p>  

```haskell
-- 9. Реализовать на языке Haskell функцию которая увеличивает элементы исходного списка в 10 раз.
fmul = map (*10)
main = do
print $ fmul [1, 2 .. 10]
-- [10,20,30,40,50,60,70,80,90,100]
```  
</p>
</details>  
<details><summary>Задача 10</summary>  
<p>  

```haskell
-- 10. Реализовать на языке Haskell функцию, вычисляющую скалярное произведение векторов, заданных списками целых чисел.
sepvector ([]:x) = []
sepvector x = [map head x] ++ sepvector (map tail x)

mul x = foldl (\acc2 v -> acc2 * v) 1 x

scalarmul x = sum $ map mul $ sepvector x

main = do
print (scalarmul [[1, 2, 3], [2, 3, 6], [5, 2, 4]])
-- 94
```  
</p>
</details>  
<details><summary>Задача 11</summary>  
<p>  

```haskell
-- 11. Реализовать на языке Haskell функцию, которая, чередуя элементы списков [a, b, ...] и [1, 2, ...], образует новый список [a, 1, b, 2, ...].
mergelst [] x = if x == [] then x else mergelst x []
mergelst (x:xs) y = x : mergelst y xs

main = do
print $ mergelst ["1", "2", "3"] ["a", "b", "c"]
print $ mergelst ["1", "2", "3"] ["a"]
-- ["1","a","2","b","3","c"]
-- ["1","a","2","3"]
```  
</p>
</details>  
<details><summary>Задача 12</summary>  
<p>  
	
```haskell
-- 12. Реализовать на языке Haskell функцию ПЕРЕСЕЧЕНИЕ, формирующую пересечение двух множеств.
contain [] x = False
contain (x1:xs) x = if x1 == x then True else contain xs x

intersect l1 l2 = filter (\x -> contain l2 x) l1

main = do
print $ intersect [1, 2, 3, 4, 5] [5, 3]
-- [3,5]
```  
</p>
</details>  
