#language: pt
#utf-8

@make_v2
Funcionalidade: Criar um novo usuário na API mockada
  Eu como um usuário da API mockada
  Quero criar um usuário
  Para poder seguir com as jornadas

  Critérios de aceitação:
  Os campos obrigatórios de preenchimento para criação de um novo usuário é: Nome, Idade e Profissão

  Contexto:
    Dado que eu tenha acesso à API de criação de Usuário

  @post_user_mock
  Cenário: Validar criação de um novo usuário na base
    Dado que possua o payload de criação de usuário
    Quando realizar o request de criação
    Então deve apresentar o code 201

  @get_user_mock
  Cenário: Validar consulta de um novo usuário na base
    Dado que possua o payload de criação de usuário
    Quando realizar o request de consulta
    Então deve apresentar o code 201

  @patch_user_mock
  Cenário: Validar edição parcial de um novo usuário na base
    Dado que possua o payload de criação de usuário
    Quando realizar o request de edição parcial
    Então deve apresentar o code 201

  @put_user_mock
  Cenário: Validar edição completa de um novo usuário na base
    Dado que possua o payload de criação de usuário
    Quando realizar o request de edição completa
    Então deve apresentar o code 201

  @delete_user_mock
  Cenário: Validar delação de um novo usuário na base
    Dado que possua o payload de criação de usuário
    Quando realizar o request de deleção
    Então deve apresentar o code 201
