Dado(/^que esteja na tela de cadastro de Tarefa$/) do
 	@login = Logar.new
	@login.load
	@cadastro = Cadastrar.new

end

Quando(/^uma nova Tarefa "([^"]*)"$/) do |arg1|
  	@login.login('will', 'will')
	@cadastro.create.click
	@cadastro.createtask.click
	@cadastro.nametask.set(arg1)
	@cadastro.savetask[0].click
end

Entao(/^o mesmo deve ser apresentado na tela "([^"]*)"$/) do |arg1|
  assert_text(arg1)
end