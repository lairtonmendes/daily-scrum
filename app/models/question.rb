class Question


	TITLE_ONE = {"M" => "O que pretende fazer hoje?", "T" => "O que você realizou hoje?"}
	TITLE_TWO = {"M" => "Há algum impedimento?", "T" => "Houve Algum impedimento?"}
	
	def title(daily_id, n)
		tipo = Daily.find(daily_id).tipo
		if n == 1
			return TITLE_ONE[tipo].to_s
		elsif n == 2
			return TITLE_TWO[tipo].to_s
		end
			
	end
	
	
end