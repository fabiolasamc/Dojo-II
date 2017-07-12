Dado(/^que esteja na tela de cadastro de Tarefa$/) do
 	@login = Logar.new
	@login.load
	@cadastro = Cadastrar.new

end

#Quando(/^uma nova Tarefa "([^"]*)"$/) do |arg1|
 # 	@login.login('will', 'will')
#	@cadastro.create.click
#	@cadastro.createtask.click
#	@cadastro.nametask.set(arg1)
#	find(:xpath,'//option[@value = "Completed"]').click
#	@cadastro.savetask[0].click
#end


Quando(/^uma nova Tarefa Fabiola$/) do 
  	@login.login('will', 'will')
	@cadastro.create.click
	@cadastro.createtask.click
	@cadastro.nametask.set "Fabiola"
	find(:xpath,'//option[@value = "In Progress"]').click
	@cadastro.savetask[0].click
end

Quando(/^uma nova Tarefa Ygor$/) do 
  	@login.login('will', 'will')
	@cadastro.create.click
	@cadastro.createtask.click
	@cadastro.nametask.set "Ygor"
	find(:xpath,'//option[@value = "Completed"]').click
	@cadastro.savetask[0].click
end

Quando(/^uma nova Tarefa Larissa$/) do 
  	@login.login('will', 'will')
	@cadastro.create.click
	@cadastro.createtask.click
	@cadastro.nametask.set "Larissa"
	find(:xpath,'//option[@value = "Deferred"]').click
	@cadastro.savetask[0].click
end

Quando(/^uma nova Tarefa Nicollas$/) do 
  	@login.login('will', 'will')
	@cadastro.create.click
	@cadastro.createtask.click
	@cadastro.nametask.set "Nicollas"
	find(:xpath,'//option[@value = "Pending Input"]').click
	@cadastro.savetask[0].click
end

Entao(/^o mesmo deve ser apresentado na tela Fabiola$/) do 
  assert_text('Fabiola')
 
end

Entao(/^o mesmo deve ser apresentado na tela Ygor$/) do 
  assert_text('Ygor')
end

Entao(/^o mesmo deve ser apresentado na tela Larissa$/) do 
  assert_text('Larissa')
end

Entao(/^o mesmo deve ser apresentado na tela Nicollas$/) do 
  assert_text('Nicollas')
end