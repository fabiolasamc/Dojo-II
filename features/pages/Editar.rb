class Editar < SitePrism::Page
	
	element :atividade, :xpath, '//*[@id="grouptab_3"]'
	element :tarefa, :xpath, '//*[@id="moduleTab_6_Tasks"]'	
	element :selecionartask, :xpath, '//*[@id="edit-37212ece-ff31-b28e-04c0-59541b78d0b5"]/img'
	elements :statusField,:xpath,"//select[@id = 'status']"
	elements :savetask, '#SAVE'
	
end 