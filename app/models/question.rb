# class question returns the titles of the questions of the dailies
# receive two parameters, daily_id and question index
#
class Question
	TITLE_ONE = {"M" => "O que pretende fazer hoje?", "T" => "O que você realizou hoje?"}
	TITLE_TWO = {"M" => "Há algum impedimento?", "T" => "Houve Algum impedimento?"}
	
	def title(daily_id, title)
		tipo = Daily.find(daily_id).tipo
		if title == 1
			TITLE_ONE[tipo].to_s
		elsif title == 2
			TITLE_TWO[tipo].to_s
		end
	end
end