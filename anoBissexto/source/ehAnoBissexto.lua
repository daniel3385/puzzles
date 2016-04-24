function ehAnoBissexto(ano)
	-- divisible by 4, but not by 100, excetp divisible too by 400
	if ( (ano%4 == 0) and (not(ano%100 == 0) or (ano%400 == 0))) then
		return true
	else
		return false
	end
end
		
