Feature: Produto
  As a administrador do Chame Modas Web
  I want to cadastrar, alterar, remover e ver um produto
  So that eu possa expor e gerenciar os produtos

  Scenario: Cadastrar produto corretamente
    Given Eu estou logado como administrador
    And Eu estou na pagina de cadastro de produto
    When Eu preencho os campos do codigo com 123 e preco com 10.0
    And Eu clico para salvar o produto
    Then Eu vejo que o produto com o codigo 123 foi salvo

  Scenario: Alterar produto corretamente
    Given Eu estou logado como administrador
    And Existe um produto com o codigo 1 e preco 9.99
    And Eu estou na pagina com todos os produtos ja cadastrados
    When Eu clico para alterar o produto com o codigo 1
    And Eu altero os campos de quantidade em estoque para 10 e preco para 10.0
    And Eu clico para salvar as alteracoes
    Then Eu vejo que os campos de quantidade em estoque e preco para foram atualizados para 10 e 10.0

  Scenario: Vizualizar produto
    Given Eu estou logado como administrador
    And Existe um produto com o codigo 1 e preco 9.99
    And Eu estou na pagina com todos os produtos ja cadastrados
    When Eu seleciono a opcao para ver o produto com codigo 1
    Then Eu vejo o produto de codigo 1

  Scenario: Remover produto corretamente
    Given Eu estou logado como administrador
    And Existe um produto com o codigo 1 e preco 9.99
    And Eu estou na pagina com todos os produtos ja cadastrados
    When Eu seleciono a opcao de deletar o produto com codigo 1
    Then Vejo que o produto com codigo 1 foi corretamente deletado

  Scenario: Cadastrar produto sem preco
    Given Eu estou logado como administrador
    And Eu estou na pagina de cadastro de produto
    When Eu preencho os campos do codigo com 123 e nao preencho o campo preco
    And Eu clico para salvar o produto
    Then Eu vejo uma mensagem de erro