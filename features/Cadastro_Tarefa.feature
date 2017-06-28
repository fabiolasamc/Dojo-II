#language: pt
#utf-8
@teste1
Funcionalidade: Cadastro Tarefa
Eu como Administrador do portal
Quero cadastrar uma nova Tarefa
Para mais organização

	Contexto: Cadastrar Tarefa
		Dado que esteja na tela de cadastro de Tarefa

	Esquema do Cenario: Cadastrar Tarefa
		Quando uma nova Tarefa <task> 
		Entao o mesmo deve ser apresentado na tela <confirmacao>

		Exemplos:
			|	task	|confirmacao|
			|	Fabiola |	Fabiola	|
			|	Ygor	|	Ygor	|
			|	Larissa	| 	Larissa	|
			|	Nicollas|	Nicollas|