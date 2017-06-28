class Deletar < SitePrism::Page
	
	element :atvdd, :xpath, '//*[@id="grouptab_3"]'
	element :tarefa, :xpath, '//*[@id="moduleTab_6_Tasks"]'	
	element :selecionartask, :xpath, '//*[@id="MassUpdate"]/div[3]/table/tbody/tr[1]/td[4]/b/a'
	element :action_link, :xpath,"//*[@id='tab-actions']/a"
  	element :delete_task, :xpath,"//*[@id='delete_button']"
	
	def validar_delecao
  		page.driver.browser.switch_to.alert.accept
   end

end 