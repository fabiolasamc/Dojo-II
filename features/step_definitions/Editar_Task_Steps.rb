Dado(/^que alterei uma tarefa$/) do
 	@login = Logar.new
 	@login.load
	@editar = Editar.new
end

Quando(/^acessei a tela de edição$/) do
  	@login.login('will', 'will')
	@editar.atividade.click
	@editar.tarefa.click
	@editar.selecionartask.click
	find(:xpath,'//option[@value = "In Progress"]').click
	@editar.savetask[0].click

end

Então(/^a tarefa foi alterada com sucesso$/) do
  assert_text('In Progress')
end