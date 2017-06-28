Dado(/^que estou no site de tarefas$/) do
   	@login = Logar.new
 	@login.load
	@deletar = Deletar.new
end

Quando(/^deleto a tarefa$/) do
	@login.login('will', 'will')
	@deletar.atvdd.click
	@deletar.tarefa.click
	@deletar.selecionartask.click
	@deletar.action_link.click
	@deletar.delete_task.click

end

Entao(/^a delecao da tarefa sera efetuada$/) do
  @deletar.validar_delecao
end
