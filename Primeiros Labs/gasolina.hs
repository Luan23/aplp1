encheTanque :: Double -> Double -> Double -> Double
encheTanque alcool gasolina litros
	| (alcool) >= (0.70 * gasolina) = (litros * gasolina)
	| otherwise = (litros * alcool)

main :: IO ()
main = do

	al <- getLine
	let alcool = read al
	gas <- getLine
	let gasolina = read gas	
	l <- getLine
	let litros = read l

	putStrLn(show(encheTanque alcool gasolina litros))
