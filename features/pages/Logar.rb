class Logar < SitePrism::Page
set_url "https://demo.suiteondemand.com"

element :user , "#user_name"
element :pass, "#user_password"
element :botao, "#bigbutton" 

	def login(usuario, senha)
		user.set(usuario)
		pass.set(senha)
		botao.click
	end 

end