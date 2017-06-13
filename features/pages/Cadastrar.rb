class Cadastrar < SitePrism::Page
	
	element :create, :xpath, '//*[@id="quickcreatetop"]/a'
	element :createtask, :xpath, '//*[@id="quickcreatetop"]/ul/li[7]/a'
	element :nametask, '#name'
	elements :savetask, '#SAVE'
	
end 