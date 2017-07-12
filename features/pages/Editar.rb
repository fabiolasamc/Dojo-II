class Editar < SitePrism::Page
	
	element :atividade, :xpath, '//*[@id="grouptab_3"]'
	element :tarefa, :xpath, '//*[@id="moduleTab_6_Tasks"]'	
	#elements :selecionartask, 'has_content? (Fabiola)'
	elements :filtro, :xpath, '//*[@id="pagination"]/td/table/tbody/tr/td[1]/ul[3]/li/a'
	element :filtroname, :xpath, '//*[@id="name_basic"]'
	element :botonsearch, :xpath, '//*[@id="search_form_submit"]'
	elements :selecionartask, :xpath, '//*[@id="MassUpdate"]/div[3]/table/tbody/tr/td[4]/b/a'
	#elements :selecionartask, 'assert_text(Fabiola)'
	element :action_link, :xpath, '//*[@id="tab-actions"]/a'
	element :editar_task, :xpath, '//*[@id="edit_button"]'
	#elements :statusField, :xpath, '//select[@id = 'status']'
	elements :savetask, '#SAVE'
	
end 