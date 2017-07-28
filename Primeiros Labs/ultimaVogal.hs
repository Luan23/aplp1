ultimaVogal :: [String] -> IO()
ultimaVogal [] = putStr("")
ultimaVogal (s : xs) 
	|p == 'a' = do
		putStr("a")
		ultimaVogal xs
	|p == 'e' = do
		putStr("e")
		ultimaVogal xs
	|p == 'i' = do
		putStr("i")
		ultimaVogal xs
	|p == 'o' = do
		putStr("o")
		ultimaVogal xs
	|p == 'u' = do
		putStr("u")
		ultimaVogal xs
	|otherwise = do
		putStr("")
		ultimaVogal xs
	where 
	  p = (last s) 



main = do
	input1 <- getLine
	input2 <- getLine
	input3 <- getLine
	input4 <- getLine
	input5 <- getLine
	let lista = input1 : input2 : input3 : input4 : input5 : []
	ultimaVogal lista
