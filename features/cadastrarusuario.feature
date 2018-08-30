#language: pt
#utf-8

@cadastrar
Funcionalidade: cadastrar novo empregado
Eu como usuario
Quero cadastrar um novo usuario
Para consultar na lista de usuarios cadastrados

@cadastrarusuarionovo
Cenario: Validar o cadastro de um novo usuario
  Dado que esteja na tela de cadastro
  Quando preencher os campos
  E clicar no botao salvar
  Entao e exibido na tabela de usuarios os dados do usuario cadastrados