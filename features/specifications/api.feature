#language: pt
#encoding: uft-8
@testelabs
Funcionalidade: Testar API
    Como um usuário do sistema
    Quero realizar requisições de API
    A fim de manipular informações

    Cenário: Testar o POST
        Dado o endereço da API
        Quando realizar a requisição POST
        Então a API irá retornar os dados e ser validada com Status Code 201

    Cenário: Testar o GET
        Dado o endereço da API
        Quando realizar a requisição GET com os dados do Usuário pelo ID
        Então a API irá retornar os dados do usuário e ser validada com Status Code 200

    Cenário: Testar o PUT
        Dado o endereço da API
        Quando realizar a requisição PUT
        Então a API irá retornar os dados inseridos com Status Code 200

    Cenário: Testar o DELETE
        Dado o endereço da API
        Quando realizar a requisição DELETE
        Então a API irá retornar os dados excluídos com Status Code 204

    Cenário: Testar o PATCH
        Dado o endereço da API
        Quando realizar a requisição PATCH
        Então a API irá retornar os dados atualizados com Status Code 200