valor :: String -> Int
valor veiculo | (veiculo=="moto") = 5
		| (veiculo=="carro") = 10
		| other = 30
main :: IO()
main = do
	veiculo <- getline
	putStrLn(show(valor veicilo))
