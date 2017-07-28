converteLista :: [Int] -> [Int] -> IO()
converteLista [] [] = putStr("")
converteLista l1 l2 = do
	let d = (head l1) - (head l2)
	print(d)
	converteLista (tail l1) (tail l2)



main = do
	input1 <- getLine
 	let l1 = (map read $ words input1 :: [Int])
	input2 <- getLine
	let l2 = (map read $ words input2 :: [Int])

	converteLista l1 l2





