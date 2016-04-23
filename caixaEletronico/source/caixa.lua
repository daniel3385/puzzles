-- Notas disponíveis de R$ 100,00; R$ 50,00; R$ 20,00 e R$ 10,00
-- Entregar o menor número de notas

cedulas = {100, 50, 20, 10}

function saque(valor)
	local result = {}
	result[100] = math.floor(valor/cedulas[1])
	-- valor restante para ser dividido pelas notas seguintes na tabela
	valor = valor%cedulas[1]

	result[50] = math.floor(valor/cedulas[2])
	valor = valor%cedulas[2]
	 
	result[20] = math.floor(valor/cedulas[3])
	valor = valor%cedulas[3]

	result[10] = math.floor(valor/cedulas[4])

	return result
end
