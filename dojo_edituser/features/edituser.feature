#language: pt
#utf-8

@cadastrar
Funcionalidade: cadastrar novo empregado
Eu como usuario
Quero cadastrar um novo usuario
Para consultar na lista de usuarios cadastrados

@cadastrarusuarionovo
Cenario: Validar o cadastro de um novo usuario
Dado que eu tenha consultado um usuario
Quando editar os dados do usuario
Então os dados sao alterado na tabela de resultados