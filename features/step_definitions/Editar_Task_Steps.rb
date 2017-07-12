Dado(/^que alterei uma tarefa$/) do
 	@login = Logar.new
 	@login.load
	@editar = Editar.new
end

Quando(/^acessei a tela de edição$/) do
  	@login.login('will', 'will')
	@editar.atividade.click
	@editar.tarefa.click
	sleep 6
	@editar.filtro[0].click
	@editar.filtroname.set "Fabiola"
	@editar.botonsearch.click
	sleep 5
	@editar.selecionartask[0].click
	#has_content?('Send proposal').click
	@editar.action_link.click
	@editar.editar_task.click
	find(:xpath,'//option[@value = "Completed"]').click
	#find(:xpath,'//option[@value = "In Progress"]').click
	@editar.savetask[0].click

end

Então(/^a tarefa foi alterada com sucesso$/) do
  assert_text('Completed')
end